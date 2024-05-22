import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherDataWidget extends StatelessWidget {
  const WeatherDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    var textStyle = const TextStyle(
      fontSize: 24,
    );
    const textStyle2 = TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.bold,
    );

    return Column(
      children: [
        const Spacer(),
        Text(
          weatherModel.city,
          style: textStyle2.copyWith(
            fontSize: 32,
          ),
        ),
        Text(
          'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
          style: textStyle,
        ),
        const Spacer(),
        Image.network(
          weatherModel.image.contains('https')
              ? weatherModel.image
              : 'https:${weatherModel.image}',
        ),
        Text(
          '${weatherModel.avgTemp.round()}°',
          style: textStyle2,
        ),
        Center(
          child: Text(
            '${weatherModel.state}'
            '  '
            '${weatherModel.maxTemp.round()}°'
            '/'
            '${weatherModel.minTemp.round()}°',
            style: textStyle,
          ),
        ),
        const Spacer(
          flex: 4,
        ),
      ],
    );
  }
}

// Alt + 0176 => °
