import 'package:flutter/material.dart';
import 'package:weather_app_challenge/models/forecast.dart';

class CityForecastWidget extends StatelessWidget {
  final List<Forecast> forecasts;

  const CityForecastWidget({super.key, required this.forecasts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: forecasts.length,
          itemBuilder: (context, index) {
            var item = forecasts[index];

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item.date,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/icons/${item.icon}.png',
                      width: 42.0,
                      height: 42.0,
                    ),
                    Text(
                      item.weather,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Min: ${item.tempMin} °C',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Max: ${item.tempMax} °C',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
