import 'package:flutter/material.dart';
import 'package:flutter_weather/home/view/widgets/city_list_widget.dart';
import 'package:flutter_weather/home/view/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Concert List'),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SearchWidget(),
            ),
            Divider(),
            Expanded(
              flex: 1,
              child: CityListWidget(),
            )
          ],
        ),
      ),
    );
  }
}
