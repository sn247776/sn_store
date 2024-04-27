import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';

class SnShadowStyle{

  static final verticalProductShadow = BoxShadow(
    color: SnColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: SnColors.darkerGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );

}