import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/custom_background.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/task_category_grid_view.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/task_classification_list.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGround(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomAppBar(),
                SizedBox(
                  height: 12,
                ),
                Divider(),
                SizedBox(
                  height: 12,
                ),
                TaskClassificationListView(),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          TaskCategoryGridView(),
        ],
      ),
    );
  }
}
