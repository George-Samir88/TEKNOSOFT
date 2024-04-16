import 'package:flutter/material.dart';

class TaskClassificationItem extends StatelessWidget {
  const TaskClassificationItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.subTitle,
  });

  final IconData iconData;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: const Color(0xff496BC2),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff496BC2),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                color: Color(0xffC4C4C6),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
