import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
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
