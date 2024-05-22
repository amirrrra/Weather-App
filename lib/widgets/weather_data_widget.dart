import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherDataWidget extends StatelessWidget {
  const WeatherDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    var textStyle = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 3,
        ),
        Text(
          weatherModel.city,
          style: textStyle,
        ),
        Text(
          weatherModel.date,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https:${weatherModel.image}',
            ),
            Text(
              '${weatherModel.avgTemp}',
              style: textStyle,
            ),
            Column(
              children: [
                Text('${weatherModel.maxTemp}'),
                Text('${weatherModel.minTemp}'),
              ],
            ),
          ],
        ),
        const Spacer(),
        Text(
          weatherModel.state,
          style: textStyle,
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
