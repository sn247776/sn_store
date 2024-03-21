import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class TAppBarTheme{
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: SnColors.black, size: SnSizes.iconMd),
    actionsIconTheme: IconThemeData(color: SnColors.black, size: SnSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: SnColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: SnColors.black, size: SnSizes.iconMd),
    actionsIconTheme: IconThemeData(color: SnColors.white, size: SnSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: SnColors.white),
  );
}