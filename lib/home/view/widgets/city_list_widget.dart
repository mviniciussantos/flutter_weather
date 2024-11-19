import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/home/bloc/home/home_bloc.dart';
import 'package:flutter_weather/weather/view/pages/weather_page.dart';

class CityListWidget extends StatelessWidget {
  const CityListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is ItemsLoaded) {
          if (state.items.isEmpty) {
            return const Center(
              child: Text('Nenhuma cidade cadastrada'),
            );
          }
          return Expanded(
            child: ListView.builder(
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: GestureDetector(
                    child: Text(state.items[index].name),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WeatherPage(
                          city: state.items[index],
                        ),
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => context
                        .read<HomeBloc>()
                        .add(RemoveItemEvent(state.items[index])),
                  ),
                );
              },
            ),
          );
        }
        return const Center(
          child: Text('Nenhuma cidade cadastrada'),
        );
      },
    );
  }
}
