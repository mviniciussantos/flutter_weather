import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:open_weather_api/open_weather_api.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final _cityBox = 'cityBox';

  HomeBloc() : super(HomeInitial()) {
    on<AddItemEvent>(_onAddItemEvent);
    on<RemoveItemEvent>(_onRemoveItemEvent);
    on<LoadLocalDataEvent>(_onLoadLocalDataEvent);

    add(LoadLocalDataEvent());
  }

  FutureOr<void> _onAddItemEvent(
      AddItemEvent event, Emitter<HomeState> emit) async {
    if (state is ItemsLoaded) {
      final currentState = state as ItemsLoaded;
      final updatedList = List<City>.from(currentState.items)..add(event.city);
      emit(ItemsLoaded(items: updatedList));
    } else {
      emit(ItemsLoaded(items: [event.city]));
    }
    var cityBox = await Hive.openBox<City>(_cityBox);
    cityBox.put(event.city.name, event.city);
  }

  FutureOr<void> _onRemoveItemEvent(
      RemoveItemEvent event, Emitter<HomeState> emit) async {
    if (state is ItemsLoaded) {
      final currentState = state as ItemsLoaded;

      final updatedList = List<City>.from(currentState.items)
        ..removeWhere((city) => city.name == event.city.name);

      var cityBox = await Hive.openBox<City>(_cityBox);

      await cityBox.delete(event.city.name);

      emit(ItemsLoaded(items: updatedList));
    }
  }

  FutureOr<void> _onLoadLocalDataEvent(
      LoadLocalDataEvent event, Emitter<HomeState> emit) async {
    var cityBox = await Hive.openBox<City>(_cityBox);

    if (cityBox.isNotEmpty) {
      emit(ItemsLoaded(items: cityBox.values.toList()));
    }
  }
}
