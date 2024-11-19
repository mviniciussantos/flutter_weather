import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/weather/bloc/weather_bloc.dart';
import 'package:flutter_weather/weather/view/widgets/city_forecast_widget.dart';
import 'package:flutter_weather/weather/view/widgets/city_weather_widget.dart';
import 'package:open_weather_api/open_weather_api.dart';

class WeatherPage extends StatefulWidget {
  final City city;

  const WeatherPage({super.key, required this.city});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(FetchWeatherAndForecast(
        city: widget.city.name, lat: widget.city.lat, long: widget.city.long));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima e previsão'),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (BuildContext context, WeatherState state) {
          if (state is WeatherLoadingState) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 4),
                  Text('Buscando informações')
                ],
              ),
            );
          } else if (state is WeatherErrorState) {
            return const Center(
              child: Text(
                  'Não foi possível obter os dados do clima e previsão para a cidade informada'),
            );
          } else if (state is WeatherSuccessState) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CityWeatherWidget(weatherResponse: state.weather),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  const Text(
                    'Previsão para os próximos dias',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CityForecastWidget(forecasts: state.forecastList),
                ]);
          }
          return Container();
        },
      ),
    );
  }
}
