import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/data/models/task_classification_model.dart';

class TaskClassificationItem extends StatelessWidget {
  const TaskClassificationItem({
    super.key,
    required this.taskClassificationModel,
  });

  final TaskClassificationModel taskClassificationModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          taskClassificationModel.iconData,
          color: const Color(0xff496BC2),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              taskClassificationModel.title,
              style: const TextStyle(
                color: Color(0xff496BC2),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              taskClassificationModel.subTitle,
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
