import 'package:json_annotation/json_annotation.dart';
import 'package:open_weather_api/src/models/weather_response.dart';

part 'forecast_response.g.dart';

@JsonSerializable()
class ForecastResponse {
  @JsonKey(name: 'cod')
  final String codigo;
  @JsonKey(name: 'cnt')
  final int count;
  List<WeatherResponse>? list;

  ForecastResponse({
    required this.codigo,
    required this.count,
    this.list,
  });

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastResponseToJson(this);
}
