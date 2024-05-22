import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/widgets/app_bar_widget.dart';
import 'package:weather_app/widgets/no_weather_data_widget.dart';
import 'package:weather_app/widgets/weather_data_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is GetWeatherInitialState) {
            return const NoWeatherDataWidget();
          } else if (state is GetWeatherSuccessState) {
            return WeatherDataWidget();
          } else {
            return const Text('oops, there was an error');
          }
        },
      ),
    );
  }
}
