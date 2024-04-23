import 'package:flutter/material.dart';

import 'calendar_header.dart';
import 'calendar_seven_days_view.dart';

class CustomCalendarSection extends StatelessWidget {
  const CustomCalendarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Divider(
            thickness: 0.5,
          ),
          SizedBox(
            height: 12,
          ),
          CalendarHeader(),
          SizedBox(
            height: 12,
          ),
          CalendarSevenDaysView(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
