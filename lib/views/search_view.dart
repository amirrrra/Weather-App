import 'package:flutter/material.dart';
import 'package:weather_app/widgets/search_app_bar_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SearchAppBarWidget(),
    );
  }
}


