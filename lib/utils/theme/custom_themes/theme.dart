import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:sn_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:sn_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:sn_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:sn_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:sn_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:sn_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:sn_store/utils/theme/custom_themes/text_theme.dart';


class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: SnColors.grey,
    brightness: Brightness.light,
    primaryColor: SnColors.primary,
    textTheme: SnTextTheme.lightTextTheme,
    chipTheme: SnChipTheme.lightChipTheme,
    scaffoldBackgroundColor: SnColors.white,
    appBarTheme: SnAppBarTheme.lightAppBarTheme,
    checkboxTheme: SnCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: SnBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SnElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SnOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: SnTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: SnColors.grey,
    brightness: Brightness.dark,
    primaryColor: SnColors.primary,
    textTheme: SnTextTheme.darkTextTheme,
    chipTheme: SnChipTheme.darkChipTheme,
    scaffoldBackgroundColor: SnColors.black,
    appBarTheme: SnAppBarTheme.darkAppBarTheme,
    checkboxTheme: SnCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: SnBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SnElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SnOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: SnTextFormFieldTheme.darkInputDecorationTheme,
  );
}
