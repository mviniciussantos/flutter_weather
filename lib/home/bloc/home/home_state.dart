part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class ItemsLoaded extends HomeState {
  final List<City> items;

  ItemsLoaded({required this.items});

  List<Object> get props => [items];
}

class RemoveItemEvent extends HomeEvent {
  final City city;

  RemoveItemEvent(this.city);

  @override
  List<Object> get props => [city];
}


