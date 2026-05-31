import 'package:flutter/material.dart';
import 'package:flutter_task_04_interactive_member_card/core/theme/app_colors.dart';
import 'package:flutter_task_04_interactive_member_card/core/utils/styles.dart';
import 'package:flutter_task_04_interactive_member_card/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text("BACK", style: Styles.appBarTitle),
          ),
        ),
        title: Center(child: Text("PROFILE", style: Styles.appBarTitleBold)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Text("SETTINGS", style: Styles.appBarTitle),
          ),
        ],
        elevation: 0,
      ),
      body: const HomeViewBody(),
    );
  }
}
