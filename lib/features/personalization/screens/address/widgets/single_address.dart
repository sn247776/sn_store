import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnSingleAddress extends StatelessWidget {
  const SnSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);

    return SnRoundedContainer(
      padding: const EdgeInsets.all(SnSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? SnColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? SnColors.darkGrey
              : SnColors.grey,
      margin: const EdgeInsets.only(bottom: SnSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? SnColors.light
                      : SnColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sagar Nirwal',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: SnSizes.sm / 2,
              ),
              const Text(
                '+91 8535039552',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: SnSizes.sm / 2,
              ),
              const Text(
                '03 Sada Shiv Colony Kudana Road Rail Par Shamli',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
