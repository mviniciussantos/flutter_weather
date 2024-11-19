import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_weather_api/open_weather_api.dart';
import 'package:open_weather_api/src/config/http_client.dart';
import 'package:open_weather_api/src/errors/errors.dart';
import 'package:open_weather_api/src/models/forecast_response.dart';
import 'package:open_weather_api/src/models/search_response.dart';
import 'package:open_weather_api/src/models/weather_response.dart';

import 'responses/responses.dart';

class DioHttpMock extends Mock implements IHttpClient {}

main() {
  group('OpenWeatherApiClientTest', () {
    late IHttpClient httpClient;
    late OpenWeatherApiClient apiClient;

    setUp(() {
      httpClient = DioHttpMock();
      apiClient = OpenWeatherApiClient(httpClient: httpClient);
    });

    group('GetWeather', () {
      test('get valid weather', () async {
        when(() => httpClient.get(any(),
            queryParameters: any(named: 'queryParameters'))).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            statusCode: 200,
            data: WEATHER_RESPONSE,
          ),
        );

        final result = await apiClient.getWeather(lat: 0, long: 0);
        expect(result, isA<WeatherResponse>());
      });

      test('get a request exception', () async {
        when(() => httpClient.get(any(),
            queryParameters: any(named: 'queryParameters'))).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            statusCode: 404,
            data: '',
          ),
        );

        expect(
          apiClient.getWeather(lat: 0, long: 0),
          throwsA(isA<WeatherRequestFailure>()),
        );
      });
    });

    group('GetForecast', () {
      test('get valid forecast', () async {
        when(() => httpClient.get(any(),
            queryParameters: any(named: 'queryParameters'))).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            statusCode: 200,
            data: FORECAST_RESPONSE,
          ),
        );

        final result = await apiClient.getForecast(lat: 0, long: 0);
        expect(result, isA<ForecastResponse>());
      });

      test('get a request exception', () async {
        when(() => httpClient.get(any(),
            queryParameters: any(named: 'queryParameters'))).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            statusCode: 404,
            data: '',
          ),
        );

        expect(
          apiClient.getForecast(lat: 0, long: 0),
          throwsA(isA<ForecastRequestFailure>()),
        );
      });
    });

    group('Search', () {
      test('get valid result', () async {
        when(() => httpClient.get(any(),
            queryParameters: any(named: 'queryParameters'))).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            statusCode: 200,
            data: SEARCH_RESPONSE,
          ),
        );

        final result = await apiClient.getByName('aracaju');
        expect(result, isA<SearchResponse>());
      });

      test('get a empty result exception', () async {
        when(() => httpClient.get(any(),
            queryParameters: any(named: 'queryParameters'))).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            statusCode: 200,
            data: {"message": "accurate", "cod": "200", "count": 0, "list": []},
          ),
        );

        expect(
          apiClient.getByName('teste'),
          throwsA(isA<SearchNotFoundFailure>()),
        );
      });

      test('get a request exception', () async {
        when(() => httpClient.get(any(),
            queryParameters: any(named: 'queryParameters'))).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(),
            statusCode: 404,
            data: '',
          ),
        );

        expect(
          apiClient.getByName('teste'),
          throwsA(isA<SearchRequestFailure>()),
        );
      });
    });
  });
}
