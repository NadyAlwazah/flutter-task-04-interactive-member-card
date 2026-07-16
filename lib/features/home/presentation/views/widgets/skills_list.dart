import 'package:flutter/material.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({super.key, required this.skills});
  final List<String> skills;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: skills
          .map(
            (skill) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "- $skill",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
