import 'package:open_weather_api/src/models/search_model_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  final String message;
  final String cod;
  final int count;
  final List<SearchModelResponse> list;

  SearchResponse(
      {required this.message,
      required this.cod,
      required this.count,
      required this.list});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
