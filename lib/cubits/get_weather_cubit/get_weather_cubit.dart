import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitialState());
  getWeather(String city) async {
    try {
      WeatherModel weatherModel = await WeatherService().getWeather(city);
      emit(GetWeatherSuccessState());
    }catch (e) {
      emit(GetWeatherFailureState());
    }
  }
}
