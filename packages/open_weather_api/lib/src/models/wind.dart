import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wind.g.dart';
@HiveType(typeId: 6)
@JsonSerializable()
class Wind {
  @HiveField(0)
  final double speed;
  @HiveField(1)
  final int deg;
  @HiveField(2)
  final double? gust;

  Wind({required this.speed, required this.deg, required this.gust});

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

  Map<String, dynamic> toJson() => _$WindToJson(this);
}
