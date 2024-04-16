import 'package:flutter/material.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({super.key, required this.child});

  final Widget child;

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
      child: child,
    );
  }
}
