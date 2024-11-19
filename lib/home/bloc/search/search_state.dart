part of 'search_bloc.dart';

sealed class SearchState {}

final class SearchInitialState extends SearchState {}

final class SearchLoadingState extends SearchState {}

final class SearchErrorState extends SearchState {}

class SearchSuccess extends SearchState {
  final List<City> cities;

  SearchSuccess({required this.cities});
}
