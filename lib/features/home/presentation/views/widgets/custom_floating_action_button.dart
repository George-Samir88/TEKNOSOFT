import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      shape: const CircleBorder(),
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff6194AB),
              Color(0xff4E68BA),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            shape: BoxShape.circle),
        child: const Icon(Icons.add),
      ),
    );
  }
}
