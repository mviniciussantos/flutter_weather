import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clouds.g.dart';

@HiveType(typeId: 7)
@JsonSerializable()
class Clouds {
  @HiveField(0)
  final int all;

  Clouds({required this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}
