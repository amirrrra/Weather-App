import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/app_bar_widget.dart';
import 'package:weather_app/widgets/no_weather_data_widget.dart';
import 'package:weather_app/widgets/weather_data_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: weatherModel == null
          ? const NoWeatherDataWidget()
          : const WeatherDataWidget(),
    );
  }
}
