import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/weather/bloc/weather_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:open_weather_api/open_weather_api.dart';
import 'package:provider/provider.dart';
import 'package:weather_repository/weather_repository.dart';

import 'home/bloc/home/home_bloc.dart';
import 'home/bloc/search/search_bloc.dart';
import 'home/view/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  _registerHiveAdapters();

  runApp(
    MultiProvider(
      providers: [
        Provider<IHttpClient>(create: (_) => HttpClient()),
        Provider<IWeatherService>(
            create: (context) =>
                OpenWeatherApiClient(httpClient: context.read<IHttpClient>())),
        Provider<IWeatherRepository>(
            create: (context) =>
                WeatherRepository(service: context.read<IWeatherService>())),
        BlocProvider(
          create: (context) => SearchBloc(context.read<IWeatherRepository>()),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => WeatherBloc(context.read<IWeatherRepository>()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

void _registerHiveAdapters() {
  Hive.registerAdapter(WeatherResponseAdapter());
  Hive.registerAdapter(WeatherAdapter());
  Hive.registerAdapter(CityAdapter());
  Hive.registerAdapter(MainAdapter());
  Hive.registerAdapter(WindAdapter());
  Hive.registerAdapter(CloudsAdapter());
  Hive.registerAdapter(SysAdapter());
  Hive.registerAdapter(CoordAdapter());
  Hive.registerAdapter(ForecastAdapter());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
