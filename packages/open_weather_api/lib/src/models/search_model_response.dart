import 'package:json_annotation/json_annotation.dart';
import 'package:open_weather_api/src/models/coord.dart';
import 'package:open_weather_api/src/models/main.dart';
import 'package:open_weather_api/src/models/sys.dart';
import 'package:open_weather_api/src/models/weather.dart';

part 'search_model_response.g.dart';

@JsonSerializable()
class SearchModelResponse {
  final int id;
  final String name;
  final Main main;
  final Coord coord;
  final List<Weather> weather;
  final Sys sys;

  SearchModelResponse({
    required this.id,
    required this.name,
    required this.main,
    required this.coord,
    required this.weather,
    required this.sys,
  });

  factory SearchModelResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchModelResponseToJson(this);
}
