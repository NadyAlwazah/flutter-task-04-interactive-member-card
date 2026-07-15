import 'package:flutter/material.dart';

class AddSkillButton extends StatefulWidget {
  const AddSkillButton({super.key, this.onAddSkill});

  final Function(String)? onAddSkill;
  @override
  State<AddSkillButton> createState() => _AddSkillButtonState();
}

class _AddSkillButtonState extends State<AddSkillButton> {
  List<String> skills = [
    "Flutter",
    "Dart",
    "UI Design",
    "Responsive UI",
    "Firebase",
    "Animation",
  ];

  int counter = 0;
  void addSkill() {
    if (counter < skills.length) {
      widget.onAddSkill?.call(skills[counter]);
      counter++;
    }
  }

  bool isLongPressed = false;
  void toggleLongPressState() {
    setState(() {
      isLongPressed = !isLongPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: addSkill,
      onLongPress: toggleLongPressState,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        color: !isLongPressed ? Colors.black : Colors.blue,
        child: Text(
          !isLongPressed ? "ADD SKILL" : "Added Successfully",
          style: !isLongPressed
              ? const TextStyle(
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )
              : const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
        ),
      ),
    );
  }
}
