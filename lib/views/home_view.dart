import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/widgets/app_bar_widget.dart';
import 'package:weather_app/widgets/no_weather_data_widget.dart';
import 'package:weather_app/widgets/weather_data_widget.dart';

// Integrate cubit

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, GetWeatherState>(
      builder: (context, state) {
        return Scaffold(
          // ignore: prefer_const_constructors
          appBar: AppBarWidget(),
          body: state is GetWeatherInitialState
              ? const NoWeatherDataWidget()
              : state is GetWeatherSuccessState
                  // ignore: prefer_const_constructors
                  ? WeatherDataWidget()
                  : const Text('oops, there was an error'),
        );
      },
    );
  }
}
