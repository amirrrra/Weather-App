import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/utils/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        onSubmitted: (value) {
          var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
          getWeatherCubit.getWeather(value);
          Navigator.pop(context);
        },
        decoration: const InputDecoration(
          labelText: 'Search',
          hintText: 'Enter city name',
          floatingLabelStyle: TextStyle(
            color: kAppBar,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 28,
            horizontal: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kAppBar,
            ),
          ),
        ),
        autofocus: true,
        onTapOutside: (pointer) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }
}
