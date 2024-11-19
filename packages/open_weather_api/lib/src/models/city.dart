import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class City {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final double lat;
  @HiveField(2)
  final double long;
  @HiveField(3)
  final double temperature;
  @HiveField(4)
  final double minTemperature;
  @HiveField(5)
  final double maxTemperature;
  @HiveField(6)
  final String weatherDescription;
  @HiveField(7)
  final String? country;

  City(
      {required this.name,
      required this.lat,
      required this.long,
      required this.temperature,
      required this.minTemperature,
      required this.maxTemperature,
      required this.weatherDescription,
      this.country});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
