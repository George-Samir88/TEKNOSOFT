import 'package:flutter/material.dart';

class CustomUpcomingAppBar extends StatelessWidget {
  const CustomUpcomingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ],
    );
  }
}
