import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/custom_background.dart';

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
          SizedBox(
            height: 10,
          ),
          CustomUpcomingAppBar(),
        ],
      ),
    );
  }
}
