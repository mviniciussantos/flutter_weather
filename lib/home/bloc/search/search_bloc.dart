import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:open_weather_api/open_weather_api.dart';
import 'package:weather_repository/weather_repository.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IWeatherRepository repository;


  SearchBloc(this.repository) : super(SearchInitialState()) {
    on<SearchCityName>(_onSearchCityName);
    on<SearchReset>(_onSearchReset);
  }

  FutureOr<void> _onSearchCityName(
      SearchCityName event, Emitter<SearchState> emit) async {
    emit(SearchLoadingState());
    final result = await repository.getByName(event.name);
    result.fold((l) => emit(SearchErrorState()), (r) {
      List<City>? cities;
      final response = r;
      if (response.count > 0) {
        cities = response.list
            .map(
              (c) => City(
                name: c.name,
                lat: c.coord.lat,
                long: c.coord.lon,
                temperature: c.main.temp,
                minTemperature: c.main.tempMin,
                maxTemperature: c.main.tempMax,
                weatherDescription: c.weather[0].main,
                country: c.sys.country,
              ),
            )
            .toList();
      }
      emit(SearchSuccess(cities: cities ?? <City>[]));
    });
  }

  FutureOr<void> _onSearchReset(SearchReset event, Emitter<SearchState> emit) {
    emit(SearchInitialState());
  }
}
