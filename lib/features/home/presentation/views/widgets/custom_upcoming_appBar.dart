import 'package:flutter/material.dart';

class CustomUpcomingAppBar extends StatelessWidget {
  const CustomUpcomingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        const Text(
          'Upcoming',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz_rounded),
        ),
      ],
    );
  }
}
