import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/custom_background.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/upcoming_tasks_item_list_view.dart';

import 'custom_calendar_section.dart';
import 'custom_upcoming_appBar.dart';

class UpcomingViewBody extends StatelessWidget {
  const UpcomingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackGround(
      padding: 10,
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CustomUpcomingAppBar(),
            ],
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomCalendarSection(),
                ),
                UpcomingTasksItemListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
