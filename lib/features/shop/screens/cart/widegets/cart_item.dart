
import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/images/sn_rounded_image.dart';
import 'package:sn_store/common/widgets/texts/product_title_text.dart';
import 'package:sn_store/common/widgets/texts/sn_brand_title_text_with_verified_icon.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnCartItem extends StatelessWidget {
  const SnCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        SnRoundedImage(
          imageUrl: SnImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(SnSizes.sm),
          backgroundColor:
          SnHelperFunctions.isDarkMode(context)
              ? SnColors.darkerGrey
              : SnColors.light,
        ),
        const SizedBox(
          width: SnSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SnTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: SnProductTitleText(
                title: 'Black Sports shoes',
                maxLines: 1,
              ),),
              /// Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}