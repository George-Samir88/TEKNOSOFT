import 'package:flutter/material.dart';

class UpcomingTasksItem extends StatelessWidget {
  const UpcomingTasksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: const Color(0xffF2F6FE),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Weekly meeting',
                style: TextStyle(
                  color: Color(0xff496BC2),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                '14:00 - 14:30',
                style: TextStyle(
                  color: Color(0xffC4C4C6),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Color(0xff5595A7),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Work',
                    style: TextStyle(
                      color: Color(0xffC4C4C6),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star_border,
              size: 26,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
