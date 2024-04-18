import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/my_day_view.dart';

class CalendarHeader extends StatefulWidget {
  const CalendarHeader({super.key});

  @override
  State<CalendarHeader> createState() => _CalendarHeaderState();
}

class _CalendarHeaderState extends State<CalendarHeader> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${getMonthName(_selectedDate)} ${_selectedDate?.year ?? DateTime.now().year}",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          onPressed: () {
            _pickDate(context);
          },
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

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  String getMonthName(DateTime? dateTime) {
    DateTime dateTimeNow = DateTime.now();
    return DateFormat.MMM()
        .format(
          dateTime ?? dateTimeNow,
        )
        .toString();
  }
}
