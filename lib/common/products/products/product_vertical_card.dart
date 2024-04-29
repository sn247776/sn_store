import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/styles/shadows.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/common/widgets/icons/circular_icon.dart';
import 'package:sn_store/common/widgets/images/sn_rounded_image.dart';
import 'package:sn_store/common/widgets/texts/product_price_text.dart';
import 'package:sn_store/common/widgets/texts/product_title_text.dart';
import 'package:sn_store/common/widgets/texts/sn_brand_title_text_with_verified_icon.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnProductVerticalCard extends StatelessWidget {
  const SnProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SnShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SnSizes.productImageRadius),
          color: dark ? SnColors.darkerGrey : SnColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Whishlist Button, Discount Tag
            SnRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SnSizes.sm),
              backgroundColor: dark ? SnColors.dark : SnColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const SnRoundedImage(
                      imageUrl: SnImages.productImage1, applyImageRadius: true),

                  Positioned(
                    top: 12,
                    child: SnRoundedContainer(
                      radius: SnSizes.sm,
                      backgroundColor: SnColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: SnSizes.sm, vertical: SnSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: SnColors.black),
                      ),
                    ),
                  ),

                  const Positioned(
                      top: 0,
                      right: 0,
                      child: SnCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),

            const SizedBox(height: SnSizes.spaceBtwItems / 2),

            /// Details
            const Padding(
              padding:  EdgeInsets.only(left: SnSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SnProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                   SizedBox(height: SnSizes.spaceBtwItems / 2),

                  SnTitleWithVerifiedIcon(title: 'Nike'),

                ],
              ),
            ),
            /// Spacer help us to give space in grid when our other girld size is not same so its helps us to give the same size to the both grid.
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: SnSizes.sm),
                  child: SnProductPriceText(price: '35'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: SnColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SnSizes.cardRadiusMd),
                        bottomRight:
                        Radius.circular(SnSizes.productImageRadius),
                      )),
                  child: const SizedBox(
                    width: SnSizes.iconLg * 1.2,
                    height: SnSizes.iconLg * 1.2,
                    child: Center(
                        child: Icon(Iconsax.add, color: SnColors.white)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


