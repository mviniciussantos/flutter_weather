part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

class FetchWeatherAndForecast extends WeatherEvent {
  final String city;
  final double lat;
  final double long;

  FetchWeatherAndForecast(
      {required this.city, required this.lat, required this.long});
}
