import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/task_activity.dart';

import '../../../data/models/task_classification_model.dart';

class TaskCategoryGridView extends StatelessWidget {
  const TaskCategoryGridView({
    super.key,
  });

  final List<TaskClassificationModel> taskClassificationModel = const [
    TaskClassificationModel(
      iconData: Icons.person,
      title: 'Personal',
      subTitle: '05 Tasks',
    ),
    TaskClassificationModel(
      iconData: Icons.edit,
      title: 'Learning',
      subTitle: '02 Tasks',
    ),
    TaskClassificationModel(
      iconData: Icons.work,
      title: 'Work',
      subTitle: '08 Tasks',
    ),
    TaskClassificationModel(
      iconData: Icons.shopping_bag,
      title: 'Shopping',
      subTitle: '01 Tasks',
    ),
  ];
  final List<Color> beginColors = const [
    Color(0xff7B99E0),
    Color(0xffBD7197),
    Color(0xff689CA9),
    Color(0xffFF9188),
  ];
  final List<Color> endColors = const [
    Color(0xff5270C9),
    Color(0xff7274C3),
    Color(0xff6180CB),
    Color(0xffE06368),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
          itemBuilder: (context, index) {
            return TaskActivity(
              beginColor: beginColors[index],
              endColor: endColors[index],
              taskClassificationModel: taskClassificationModel[index],
            );
          }),
    );
  }
}
