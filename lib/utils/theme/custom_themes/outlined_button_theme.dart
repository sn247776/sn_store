import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: SnColors.dark,
      side: const BorderSide(color: SnColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: SnColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: SnSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SnSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: SnColors.light,
      side: const BorderSide(color: SnColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: SnColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: SnSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SnSizes.buttonRadius)),
    ),
  );
}
