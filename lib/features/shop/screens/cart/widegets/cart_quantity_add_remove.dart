import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/icons/circular_icon.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnCartQuantityAddRemove extends StatelessWidget {
  const SnCartQuantityAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Add Remove Buttons
        SnCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: SnSizes.md,
          color: SnHelperFunctions.isDarkMode(context)
              ? SnColors.white
              : SnColors.black,
          backgroundColor: SnHelperFunctions.isDarkMode(context)
              ? SnColors.darkerGrey
              : SnColors.light,
        ),

        const SizedBox(width: SnSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: SnSizes.spaceBtwItems,),
        const SnCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: SnSizes.md,
          color: SnColors.white,
          backgroundColor:SnColors.primary,
        ),
      ],
    );
  }
}