part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

class SearchCityName extends SearchEvent {
  final String name;

  SearchCityName({required this.name});
}

class SearchReset extends SearchEvent {}
