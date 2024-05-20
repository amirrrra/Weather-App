import 'package:flutter/material.dart';
import 'package:weather_app/widgets/search_app_bar_widget.dart';
import 'package:weather_app/widgets/text_field_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const SearchAppBarWidget(),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight / 3,
          ),
          const TextFieldWidget(),
        ],
      ),
    );
  }
}
