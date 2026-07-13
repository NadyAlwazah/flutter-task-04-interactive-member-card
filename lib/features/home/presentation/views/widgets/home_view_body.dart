import 'package:flutter/material.dart';
import 'package:flutter_task_04_interactive_member_card/core/utils/styles.dart';
import 'package:flutter_task_04_interactive_member_card/features/home/presentation/views/widgets/custom_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
