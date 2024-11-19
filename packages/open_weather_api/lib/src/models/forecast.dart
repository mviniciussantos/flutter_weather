import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'forecast.g.dart';

@HiveType(typeId: 14)
class Forecast extends Equatable {
  @HiveField(0)
  final String date;
  @HiveField(1)
  final int tempMin;
  @HiveField(2)
  final int tempMax;
  @HiveField(3)
  final String icon;
  @HiveField(4)
  final String weather;

  const Forecast({
    required this.date,
    required this.tempMin,
    required this.tempMax,
    required this.icon,
    required this.weather,
  });

  @override
  List<Object?> get props => [date];
}
