abstract class OpenWeatherException implements Exception {}

class WeatherRequestFailure extends OpenWeatherException {}

class WeatherNotFoundFailure extends OpenWeatherException {}

class ForecastRequestFailure extends OpenWeatherException {}

class ForecastNotFoundFailure extends OpenWeatherException {}

class SearchRequestFailure extends OpenWeatherException {}

class SearchNotFoundFailure extends OpenWeatherException {}
