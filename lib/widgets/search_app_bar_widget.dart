import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants.dart';

class SearchAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SearchAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: kWhite,
        ),
      ),
      title: const Text(
        'Search a city',
        style: TextStyle(
          color: kWhite,
        ),
      ),
      backgroundColor: kAppBar,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}