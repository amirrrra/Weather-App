import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/utils/weather_theme.dart';

class GredientContainerWidget extends StatelessWidget {
  final Widget? child;
  const GredientContainerWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    var state = BlocProvider.of<GetWeatherCubit>(context).weatherModel?.state;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getWeatherTheme(state),
            getWeatherTheme(state)[300]!,
            getWeatherTheme(state)[700]!,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: child,
    );
  }
}
