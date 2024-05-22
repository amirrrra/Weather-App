import 'package:weather_app/models/weather_model.dart';

class GetWeatherState {}

class GetWeatherInitialState extends GetWeatherState {}

class GetWeatherSuccessState extends GetWeatherState {
  final WeatherModel weatherModel;

  GetWeatherSuccessState({required this.weatherModel});
}

class GetWeatherFailureState extends GetWeatherState {}
