import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  Dio dio = Dio();
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'f4a33b1f1e0049f1b01154331231708';
  String error = 'Oh snap! there was an error, try later';

  Future<WeatherModel?> getWeather(String city) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$city&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ?? error;
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception(error);
    }
  }
}
