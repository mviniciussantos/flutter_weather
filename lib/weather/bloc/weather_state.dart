part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitialState extends WeatherState {}

final class WeatherLoadingState extends WeatherState {}

final class WeatherSuccessState extends WeatherState {
  final WeatherResponse weather;
  final List<Forecast> forecastList;

  WeatherSuccessState(this.weather, this.forecastList);
}

final class WeatherErrorState extends WeatherState {
  final String message;

  WeatherErrorState({required this.message});
}
