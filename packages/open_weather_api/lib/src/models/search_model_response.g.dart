// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModelResponse _$SearchModelResponseFromJson(Map<String, dynamic> json) =>
    SearchModelResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchModelResponseToJson(
        SearchModelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'main': instance.main,
      'coord': instance.coord,
      'weather': instance.weather,
      'sys': instance.sys,
    };
