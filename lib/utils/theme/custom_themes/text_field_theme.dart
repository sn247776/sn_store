import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: SnColors.darkGrey,
    suffixIconColor: SnColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: SnSizes.fontSizeMd, color: SnColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: SnSizes.fontSizeSm, color: SnColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: SnColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: SnColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: SnColors.darkGrey,
    suffixIconColor: SnColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: SnSizes.fontSizeMd, color: SnColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: SnSizes.fontSizeSm, color: SnColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: SnColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: SnColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SnSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: SnColors.warning),
    ),
  );
}
