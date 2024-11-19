import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/home/bloc/home/home_bloc.dart';
import 'package:flutter_weather/home/bloc/search/search_bloc.dart';
import 'package:hive/hive.dart';
import 'package:open_weather_api/open_weather_api.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _controller = TextEditingController();
  final _cityBox = 'cityBox';

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
              labelText: 'Informe o nome da cidade',
              labelStyle: TextStyle(color: Colors.red)),
          onChanged: (value) => _onTextChanged,
        ),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state is SearchLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SearchErrorState) {
              return const Center(
                child: Text(
                    'Houve um problema na busca, tente novamente mais tarde'),
              );
            } else if (state is SearchSuccess) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.cities.length,
                  itemBuilder: (context, index) {
                    var city = state.cities[index];
                    return ListTile(
                        title: Text('${city.name}  -  ${city.country}'),
                        onTap: () => _onAddItem(city));
                  },
                ),
              );
            }

            return Container();
          },
        )
      ],
    );
  }

  void _onAddItem(City city) {
    _saveLocal(city);
    context.read<HomeBloc>().add(AddItemEvent(city));
    context.read<SearchBloc>().add(SearchReset());
    _controller.clear();
  }

  void _saveLocal(City city) async {
    var cityBox = await Hive.openBox<City>(_cityBox);
    await cityBox.put(city.name, city);
  }

  void _onTextChanged() {
    final query = _controller.text;
    if (query.isNotEmpty) {
      context.read<SearchBloc>().add(SearchCityName(name: query));
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    super.dispose();
  }
}
