import 'package:flutter/material.dart';

import '../../../data/models/task_classification_model.dart';

class TaskActivity extends StatelessWidget {
  const TaskActivity(
      {super.key,
      required this.beginColor,
      required this.endColor,
      required this.taskClassificationModel});

  final Color beginColor, endColor;
  final TaskClassificationModel taskClassificationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            beginColor,
            endColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            taskClassificationModel.iconData,
            color: Colors.white,
          ),
          const Spacer(),
          Text(
            taskClassificationModel.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            taskClassificationModel.subTitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
