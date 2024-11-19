import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

@HiveType(typeId: 5)
@JsonSerializable()
class Main {
  @HiveField(1)
  final double temp;

  @HiveField(2)
  @JsonKey(name: 'feels_like')
  final double feelsLike;

  @HiveField(3)
  @JsonKey(name: 'temp_min')
  final double tempMin;

  @HiveField(4)
  @JsonKey(name: 'temp_max')
  final double tempMax;

  @HiveField(5)
  final int pressure;

  @HiveField(6)
  final int humidity;

  @HiveField(7)
  @JsonKey(name: 'sea_level')
  final int seaLevel;

  @HiveField(8)
  @JsonKey(name: 'grnd_level')
  final int grndLevel;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}
