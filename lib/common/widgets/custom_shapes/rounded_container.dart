import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class SnRoundedContainer extends StatelessWidget {
  const SnRoundedContainer({
    super.key,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.child,
    this.showBorder = false,
    this.radius = SnSizes.cardRadiusLg,
    this.backgroundColor = SnColors.white,
    this.borderColor = SnColors.borderPrimary,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
