import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/my_day_view.dart';

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${getMonthName()} ${DateTime.now().year}",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
              color: Colors.grey,
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyDayView(),
              ),
            );
          },
          child: const Text(
            "Today",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff5C7BC9)),
          ),
        ),
      ],
    );
  }

  String getMonthName() {
    DateTime dateTime = DateTime.now();
    return DateFormat.MMM().format(
      dateTime,
    );
  }
}
