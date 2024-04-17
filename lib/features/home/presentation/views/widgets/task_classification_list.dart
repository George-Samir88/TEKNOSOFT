import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/data/models/task_classification_model.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/important_view.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/my_day_view.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/task_classification_item.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/upcoming_view.dart';

class TaskClassificationListView extends StatelessWidget {
  const TaskClassificationListView({super.key});

  final List<TaskClassificationModel> taskClassificationModel = const [
    TaskClassificationModel(
        iconData: Icons.sunny, title: 'My Day', subTitle: '7 tasks'),
    TaskClassificationModel(
        iconData: Icons.calendar_month,
        title: 'Upcoming',
        subTitle: '12 tasks'),
    TaskClassificationModel(
        iconData: Icons.star, title: 'Important', subTitle: '3 tasks'),
  ];
  final List<Widget> views = const [
    MyDayView(),
    UpcomingView(),
    ImportantView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
          children: taskClassificationModel.asMap().entries.map((e) {
        int index = e.key;
        var value = e.value;
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => views[index],
                  ),
                );
              },
              child: TaskClassificationItem(
                taskClassificationModel: value,
              ),
            ),
            index == 0 || index == 1 ? const Divider() : const SizedBox(),
          ],
        );
      }).toList()),
    );
  }
}
