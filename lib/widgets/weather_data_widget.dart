import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherDataWidget extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherDataWidget({
    super.key,
    required this.weatherModel,
  });

  @override
  Widget build(BuildContext context) {
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
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(weatherModel.image),
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
