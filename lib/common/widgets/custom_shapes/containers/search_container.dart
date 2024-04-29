import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/device/device_utility.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnSearchContainer extends StatelessWidget {
  const SnSearchContainer(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.showBackground = true,
      this.showBorder = true,
      this.onTap,
      this.padding = const EdgeInsets.symmetric(horizontal: SnSizes.defaultSpace)
      });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: SnDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(SnSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? SnColors.dark
                    : SnColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SnSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: SnColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: SnColors.darkerGrey,
              ),
              const SizedBox(
                width: SnSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
