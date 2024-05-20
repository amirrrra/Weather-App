import 'package:flutter/material.dart';

class NoWeatherDataWidget extends StatelessWidget {
  const NoWeatherDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 24);
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: screenHeight/3,
          ),
          Text(
            'There is no weather 😔',
            style: textStyle,
          ),
          Text(
            'Start searching now 🔎',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
