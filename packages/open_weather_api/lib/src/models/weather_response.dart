import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:open_weather_api/src/models/clouds.dart';
import 'package:open_weather_api/src/models/coord.dart';
import 'package:open_weather_api/src/models/main.dart';
import 'package:open_weather_api/src/models/sys.dart';
import 'package:open_weather_api/src/models/weather.dart';
import 'package:open_weather_api/src/models/wind.dart';



part 'weather_response.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class WeatherResponse {
  @HiveField(1)
  final List<Weather> weather;
  @HiveField(2)
  final String? base;
  @HiveField(3)
  final Main main;
  @HiveField(4)
  final int? visibility;
  @HiveField(5)
  final Wind wind;
  @HiveField(6)
  final Clouds clouds;
  @HiveField(7)
  final int? dt;
  @HiveField(8)
  final Sys sys;
  @HiveField(9)
  final int? timezone;
  @HiveField(10)
  final int? id;
  @HiveField(11)
  final String? name;
  @HiveField(12)
  final int? cod;
  @HiveField(13)
  final Coord? coord;
  @HiveField(14)
  @JsonKey(name: 'dt_txt')
  final String? dtTxt;

  WeatherResponse({
    required this.weather,
    this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    this.dt,
    required this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
    this.dtTxt,
    this.coord,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
