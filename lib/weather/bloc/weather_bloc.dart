import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:open_weather_api/open_weather_api.dart';
import 'package:weather_repository/weather_repository.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository repository;
  final _forecastBox = 'forecastBox';
  final _weatherBox = 'weaherBox';

  WeatherBloc(this.repository) : super(WeatherInitialState()) {
    on<FetchWeatherAndForecast>(_onFetchWeatherAndForecast);
  }

  FutureOr<void> _onFetchWeatherAndForecast(
      FetchWeatherAndForecast event, Emitter<WeatherState> emit) async {
    late WeatherResponse weather;
    var forecastList =  <Forecast>[];
    emit(WeatherLoadingState());

    final forecastBox = await Hive.openBox<List<Forecast>>(_forecastBox);
    final weatherBox = await Hive.openBox<WeatherResponse>(_weatherBox);

    final weatherResult =
        await repository.getWeather(latitude: event.lat, longitude: event.long);
    weatherResult.fold((l) {
      if (weatherBox.containsKey('${event.city}_weather')) {
        final localWeather = weatherBox.get('${event.city}_weather');
        if (localWeather != null) {
          weather = localWeather;
        } else {
          emit(WeatherErrorState(message: l.toString()));
        }
      } else {
        emit(WeatherErrorState(message: l.toString()));
      }
    }, (r) async {
      weather = r;
      if (!weatherBox.containsKey('${event.city}_weather')) {
        weatherBox.put('${event.city}_weather', weather);
      }
    });

    final forecastResult =
        await repository.getForecast(lat: event.lat, long: event.long);

    forecastResult.fold(
      (l) {
        if (forecastBox.containsKey('${event.city}_forecast')) {
          final localForecast = forecastBox.get('${event.city}_forecast') as List<Forecast>?;
          if (localForecast != null) {
            forecastList.addAll(localForecast);
          } else {
            emit(WeatherErrorState(message: l.toString()));
          }
        } else {
          emit(WeatherErrorState(message: l.toString()));
        }
      },
      (r) {
        DateFormat df = DateFormat("dd/MM/yyyy");
        String now = df.format(DateTime.now());
        ForecastResponse? response = r;
        if (response.list != null) {
          for (WeatherResponse item in response.list!) {
            var date = df.format(DateTime.parse(item.dtTxt!));

            if (date == now) {
              continue;
            }

            var forecast = Forecast(
                date: date,
                tempMin: item.main.tempMin.toInt(),
                tempMax: item.main.tempMax.toInt(),
                icon: item.weather[0].icon,
                weather: item.weather[0].main);

            if (!forecastList.contains(forecast)) {
              forecastList.add(forecast);
            }
          }
          if (!forecastBox.containsKey('${event.city}_forecast')) {
            forecastBox.put('${event.city}_forecast', forecastList);
          }
        }
      },
    );
    emit(WeatherSuccessState(weather, forecastList));
  }
}
