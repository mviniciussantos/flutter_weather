import 'package:open_weather_api/open_weather_api.dart';
import 'package:dartz/dartz.dart';

abstract class IWeatherRepository {
  Future<Either<Exception, WeatherResponse>> getWeather(
      {required double latitude, required double longitude});

  Future<Either<Exception, ForecastResponse>> getForecast(
      {required double lat, required double long});

  Future<Either<Exception, SearchResponse>> getByName(String name);
}

class WeatherRepository implements IWeatherRepository {
  final IWeatherService _service;

  WeatherRepository({required IWeatherService service}) : _service = service;

  @override
  Future<Either<Exception, WeatherResponse>> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final result = await _service.getWeather(lat: latitude, long: longitude);
      return Right(result);
    } catch (e) {
      return Left(e as Exception);
    }
  }

  @override
  Future<Either<Exception, ForecastResponse>> getForecast(
      {required double lat, required double long}) async {
    try {
      final result = await _service.getForecast(lat: lat, long: long);
      return Right(result);
    } catch (e) {
      if(e is Exception){
        return Left(e);
      }
      return Left(Exception('erro não mapeado'));
    }
  }

  @override
  Future<Either<Exception, SearchResponse>> getByName(String name) async {
    try {
      final result = await _service.getByName(name);
      return Right(result);
    } catch (e) {
      return Left(e as Exception);
    }
  }
}
