import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_weather_api/open_weather_api.dart';
import 'package:weather_repository/src/repository/weather_repository.dart';

import '../response/responses.dart';

class WeatherServiceMock extends Mock implements IWeatherService {}

main() {
  group('IWeatherRepository', () {
    final serviceMock = WeatherServiceMock();
    final repository = WeatherRepository(service: serviceMock);
    group('getWeather', () {
      test('get valid response', () async {
        when(() => serviceMock.getWeather(
                lat: any(named: 'lat'), long: any(named: 'long')))
            .thenAnswer(
                (_) async => WeatherResponse.fromJson(WEATHER_RESPONSE));

        final result = await repository.getWeather(latitude: 0, longitude: 0);
        expect(result.fold(id, id), isA<WeatherResponse>());
      });
    });

    group('getForecast', () {
      test('get valid response', () async {
        when(() => serviceMock.getForecast(
                lat: any(named: 'lat'), long: any(named: 'long')))
            .thenAnswer(
                (_) async => ForecastResponse.fromJson(FORECAST_RESPONSE));

        final result = await repository.getForecast(lat: 0, long: 0);
        expect(result.fold(id, id), isA<ForecastResponse>());
      });
    });

    group('getByName', () {
      test('get valid response', () async {
        when(() => serviceMock.getByName(any()))
            .thenAnswer(
                (_) async => SearchResponse.fromJson(SEARCH_BY_NAME));

        final result = await repository.getByName('');
        expect(result.fold(id, id), isA<SearchResponse>());
      });
    });
  });
}
