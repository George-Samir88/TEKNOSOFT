import 'package:flutter/material.dart';

class TaskClassificationItem extends StatelessWidget {
  const TaskClassificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.sunny,
          color: Color(0xff496BC2),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Day',
              style: TextStyle(
                color: Color(0xff496BC2),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '7 tasks',
              style: TextStyle(
                color: Color(0xffC4C4C6),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
