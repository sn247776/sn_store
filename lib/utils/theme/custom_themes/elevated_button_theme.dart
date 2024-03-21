import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: SnColors.light,
      backgroundColor: SnColors.primary,
      disabledForegroundColor: SnColors.darkGrey,
      disabledBackgroundColor: SnColors.buttonDisabled,
      side: const BorderSide(color: SnColors.primary),
      padding: const EdgeInsets.symmetric(vertical: SnSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: SnColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SnSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: SnColors.light,
      backgroundColor: SnColors.primary,
      disabledForegroundColor: SnColors.darkGrey,
      disabledBackgroundColor: SnColors.darkerGrey,
      side: const BorderSide(color: SnColors.primary),
      padding: const EdgeInsets.symmetric(vertical: SnSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: SnColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SnSizes.buttonRadius)),
    ),
  );
}
