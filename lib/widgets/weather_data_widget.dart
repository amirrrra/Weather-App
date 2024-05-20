import 'package:flutter/material.dart';

class WeatherDataWidget extends StatelessWidget {
  const WeatherDataWidget({super.key});

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
          'Country',
          style: textStyle,
        ),
        const Text(
          'Date',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image.asset('name'),
            Text(
              '17',
              style: textStyle,
            ),
            const Column(
              children: [
                Text('maxTemp'),
                Text('minTemp'),
              ],
            ),
          ],
        ),
        const Spacer(),
        Text(
          'state',
          style: textStyle,
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
