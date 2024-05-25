import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sn_store/common/widgets/icons/circular_icon.dart';
import 'package:sn_store/common/widgets/images/sn_rounded_image.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnProductImageSliderWithAppBar extends StatelessWidget {
  const SnProductImageSliderWithAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return SnCurvedEdgeWidget(
      child: Container(
        color: dark ? SnColors.darkerGrey : SnColors.light,
        child: Stack(
          children: [
            /// AppBar with Wishlist
            const SnAppBar(
              showBackArrow: true,
              actions: [
                SnCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            ),

            /// Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(SnSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(SnImages.productImage1))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: SnSizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => SnRoundedImage(
                      width: 80,
                      backgroundColor: dark ? SnColors.dark : SnColors.white,
                      border: Border.all(color: SnColors.primary),
                      padding: const EdgeInsets.all(SnSizes.sm),
                      imageUrl: SnImages.productImage3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
