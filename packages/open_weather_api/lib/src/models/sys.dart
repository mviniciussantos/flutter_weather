import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sys.g.dart';
@HiveType(typeId: 8)
@JsonSerializable()
class Sys {
  @HiveField(0)
  final int? type;
  @HiveField(1)
  final int? id;
  @HiveField(2)
  final String? country;
  @HiveField(3)
  final int? sunrise;
  @HiveField(4)
  final int? sunset;
  @HiveField(5)
  final String? pod;

  Sys({
     this.type,
     this.id,
     this.country,
     this.sunrise,
     this.sunset,
     this.pod,
  });

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  Map<String, dynamic> toJson() => _$SysToJson(this);
}
