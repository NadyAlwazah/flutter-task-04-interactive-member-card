import 'package:flutter/material.dart';
import 'package:flutter_task_04_interactive_member_card/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MemberCardApp());
}

class MemberCardApp extends StatelessWidget {
  const MemberCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
