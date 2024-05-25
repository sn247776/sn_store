import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/common/widgets/images/sn_circular_image.dart';
import 'package:sn_store/common/widgets/texts/product_price_text.dart';
import 'package:sn_store/common/widgets/texts/product_title_text.dart';
import 'package:sn_store/common/widgets/texts/sn_brand_title_text_with_verified_icon.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/enums.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnProductMetaData extends StatelessWidget {
  const SnProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            SnRoundedContainer(
              radius: SnSizes.sm,
              backgroundColor: SnColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: SnSizes.sm, vertical: SnSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SnColors.black),),
            ),
            const SizedBox(width: SnSizes.spaceBtwItems,),
            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: SnSizes.spaceBtwItems,),
            const SnProductPriceText(price: '175', isLarge: true,),
          ],
        ),
        const SizedBox(height: SnSizes.spaceBtwItems / 1.5,),
        ///Title
       const SnProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: SnSizes.spaceBtwItems / 1.5,),
        ///Stock Status
    Row(
      children: [
        const SnProductTitleText(title: 'Status'),
        const SizedBox(width: SnSizes.spaceBtwItems,),
        Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
      ],
    ),
        const SizedBox(height: SnSizes.spaceBtwItems / 1.5,),
        ///Brand
         Row(
          children: [
            SnCircularImage(image: SnImages.shoeIcon,
            width: 32,
            height: 32,
            overlayColor: dark ? SnColors.white : SnColors.black,),
             const SnTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
