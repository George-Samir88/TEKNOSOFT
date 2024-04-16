import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'lists',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            SizedBox(
              height: 15,
              width: 15,
              child: CircularProgressIndicator(
                color: Color(0xffA4B7E1),
                strokeWidth: 3,
                value: 80 / 100,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              "Today's Progress",
              style: TextStyle(color: Color(0xffA4B7E1), fontSize: 12),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "5 tasks left",
              style: TextStyle(color: Color(0xffC2C2CA), fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
