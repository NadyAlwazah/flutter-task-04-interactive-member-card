import 'package:flutter/material.dart';
import 'package:flutter_task_04_interactive_member_card/core/theme/app_colors.dart';
import 'package:flutter_task_04_interactive_member_card/core/utils/styles.dart';
import 'package:flutter_task_04_interactive_member_card/features/home/presentation/views/widgets/add_skill_button.dart';
import 'package:flutter_task_04_interactive_member_card/features/home/presentation/views/widgets/custom_card.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<String> addedSkills = [];
  void addSkillToList(String skill) {
    setState(() {
      addedSkills.add(skill);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, bottom: 64, top: 32),
        child: Column(
          children: [
            CustomCard(),
            SizedBox(height: 16),

            Row(
              children: [
                Text("ROLE", style: Styles.bodyBold),
                const Spacer(),
                Text("EDITOR", style: Styles.bodyBold),

                const Divider(color: Color(0xFFF1F3F5)),

                const SizedBox(height: 64),
                const Text(
                  "AUTHOR",
                  style: TextStyle(
                    letterSpacing: 3,
                    color: AppColors.appBarText,
                  ),
                ),
                const Text(
                  "Elias Thorne",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
                ),
                const SizedBox(height: 32),

                const Text(
                  "Focuses on visual storytelling and cinematic narrative structure.",
                  style: TextStyle(fontSize: 18, color: Color(0xFF484A4B)),
                ),
                const SizedBox(height: 32),

                AddSkillButton(onAddSkill: addSkillToList),
                const SizedBox(height: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
