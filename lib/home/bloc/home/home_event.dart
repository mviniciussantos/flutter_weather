part of 'home_bloc.dart';

@immutable
sealed class HomeEvent extends Equatable {}

class AddItemEvent extends HomeEvent {
  final City city;

  AddItemEvent(this.city);

  @override
  List<Object> get props => [city];
}

class LoadLocalDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
