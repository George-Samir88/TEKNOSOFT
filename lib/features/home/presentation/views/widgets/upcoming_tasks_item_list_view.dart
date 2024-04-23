import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/upcoming_tasks_item.dart';

class UpcomingTasksItemListView extends StatelessWidget {
  const UpcomingTasksItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
          child: UpcomingTasksItem(),
        );
      },
    );
  }
}
