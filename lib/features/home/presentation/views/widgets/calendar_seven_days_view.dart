import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarSevenDaysView extends StatelessWidget {
  const CalendarSevenDaysView({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: List.generate(
            7,
            (index) => TableCell(
              child: Center(
                child: index == 3
                    ? Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xff6397A6),
                                Color(0xff4D65BC),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )),
                        child: Column(
                          children: [
                            Text(
                              _getAbbreviatedDayOfWeek(index),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              _getDayOfWeek(index),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              _getAbbreviatedDayOfWeek(index),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              _getDayOfWeek(index),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _getAbbreviatedDayOfWeek(int index) {
    final dateTimeLast3Days = DateTime.now().subtract(const Duration(days: 3));
    return DateFormat.E()
        .format(
          dateTimeLast3Days.add(
            Duration(days: index),
          ),
        )
        .toString()
        .substring(0, 1); // E gives abbreviated day name (e.g., Mon, Tue, etc.)
  }

  String _getDayOfWeek(int index) {
    var dateTimeLast3Days = DateTime.now().subtract(
      const Duration(days: 3),
    );
    return dateTimeLast3Days
        .add(Duration(days: index))
        .toString()
        .substring(8, 10);
    // return DateTime.now()
    //     .subtract(Duration(days: DateTime.now().weekday - index - 1))
    //     .toString()
    //     .substring(8, 10);
  }
}
