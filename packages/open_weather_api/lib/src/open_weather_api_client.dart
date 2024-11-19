import 'package:open_weather_api/src/errors/errors.dart';

import 'config/http_client.dart';
import 'models/forecast_response.dart';
import 'models/search_response.dart';
import 'models/weather_response.dart';

abstract class IWeatherService {
  Future<WeatherResponse> getWeather({required double lat, required double long});

  Future<ForecastResponse> getForecast({required double lat, required double long});

  Future<SearchResponse> getByName(String name);
}

class OpenWeatherApiClient implements IWeatherService {
  final IHttpClient httpClient;

  OpenWeatherApiClient({required this.httpClient});

  final urlBase = "https://api.openweathermap.org/data/2.5/";
  final appId = '';

  final weatherPath = '/weather?';
  final forecastPath = '/forecast?';
  final findPath = '/find?';

  @override
  Future<WeatherResponse> getWeather(
      {required double lat, required double long}) async {
    final result = await httpClient.get(
      '$urlBase$weatherPath',
      queryParameters: {
        'lat': lat,
        'lon': long,
        'appid': appId,
        'units': 'metric'
      },
    );

    if (result.statusCode == 200) {
      return WeatherResponse.fromJson(result.data);
    } else {
      throw WeatherRequestFailure();
    }
  }

  @override
  Future<ForecastResponse> getForecast(
      {required double lat, required double long}) async {
    final result = await httpClient.get(
      '$urlBase$forecastPath',
      queryParameters: {
        'lat': lat,
        'lon': long,
        'appid': appId,
        'units': 'metric'
      },
    );

    if (result.statusCode == 200) {
      return ForecastResponse.fromJson(result.data);
    } else {
      throw ForecastRequestFailure();
    }
  }

  @override
  Future<SearchResponse> getByName(String name) async {
    final result = await httpClient.get('$urlBase$findPath',
        queryParameters: {'q': name, 'appid': appId, 'units': 'metric'});

    if (result.statusCode == 200) {
      if ((result.data['list'] as List<dynamic>).isEmpty) {
        throw SearchNotFoundFailure();
      } else {
        return SearchResponse.fromJson(result.data);
      }
    } else {
      throw SearchRequestFailure();
    }
  }
}
