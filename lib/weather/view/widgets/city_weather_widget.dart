import 'package:flutter/material.dart';
import 'package:weather_app_challenge/models/weather_response.dart';

class CityWeatherWidget extends StatelessWidget {
  final WeatherResponse weatherResponse;

  const CityWeatherWidget({super.key, required this.weatherResponse});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weatherResponse.name ?? '',
          style: const TextStyle(
              fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text('${weatherResponse.main.temp.toInt()} °C ',
            style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/${weatherResponse.weather[0].icon}.png',
              width: 60.0,
              height: 60.0,
            ),
            Text(
              '${weatherResponse.weather[0].main} - ${weatherResponse.weather[0].description}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Max: ${weatherResponse.main.tempMax.toInt()} °C',
                style: const TextStyle(fontSize: 18, color: Colors.white)),
            Text('Min: ${weatherResponse.main.tempMin.toInt()} °C',
                style: const TextStyle(fontSize: 18, color: Colors.white)),
          ],
        ),
      ],
    );
  }
}
