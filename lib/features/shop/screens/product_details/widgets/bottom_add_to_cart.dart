import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/icons/circular_icon.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnBottomAddToCart extends StatelessWidget {
  const SnBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SnSizes.defaultSpace, vertical: SnSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? SnColors.darkerGrey : SnColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(SnSizes.cardRadiusLg),
            topRight: Radius.circular(SnSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SnCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: SnColors.darkerGrey,
                width: 40,
                height: 40,
                color: SnColors.white,
              ),
              const SizedBox(
                width: SnSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: SnSizes.spaceBtwItems,
              ),
              const SnCircularIcon(
                icon: Iconsax.add,
                backgroundColor: SnColors.black,
                width: 40,
                height: 40,
                color: SnColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(SnSizes.md),
              backgroundColor: SnColors.black,
              side: const BorderSide(color: SnColors.black)
            ),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
