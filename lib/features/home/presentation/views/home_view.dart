import 'package:flutter/material.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/custom_floating_action_button.dart';
import 'package:to_do_list_teknosoft/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
