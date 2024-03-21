import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: SnColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: SnColors.black),
    selectedColor: SnColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: SnColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: SnColors.darkerGrey,
    labelStyle: TextStyle(color: SnColors.white),
    selectedColor: SnColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: SnColors.white,
  );
}
