import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants.dart';
import 'package:weather_app/views/search_view.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kAppBar,
      title: const Text(
        'Weather',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: kWhite,
        ),
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SearchView();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.search,
            color: kWhite,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
