import 'package:flutter/material.dart';
import 'package:flutter_task_04_interactive_member_card/core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle appBarTitle = GoogleFonts.spaceGrotesk(
    fontSize: 19,
    color: AppColors.appBarText,
  );

  static TextStyle appBarTitleBold = GoogleFonts.spaceGrotesk(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 4,
  );
  static TextStyle bodyBold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 3,
  );
}
