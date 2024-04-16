import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffF5F8FF), Color(0xffAFD1EC)],
        ),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CustomAppBar(),
            ],
          ),
        ],
      ),
    );
  }
}
