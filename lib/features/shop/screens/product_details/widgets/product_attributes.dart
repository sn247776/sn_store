import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/chips/choice_chip.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/common/widgets/texts/product_price_text.dart';
import 'package:sn_store/common/widgets/texts/product_title_text.dart';
import 'package:sn_store/common/widgets/texts/section_heading.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnProductAttributes extends StatelessWidget {
  const SnProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attributes
        SnRoundedContainer(
          padding: const EdgeInsets.all(SnSizes.md),
          backgroundColor: dark ? SnColors.darkerGrey : SnColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SnSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: SnSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SnProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: SnSizes.spaceBtwItems,
                          ),

                          /// SalePrice
                          const SnProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const SnProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              /// Variation Description
              const SnProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: SnSizes.spaceBtwItems,),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SnSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: SnSizes.spaceBtwItems /2,),
            Wrap(
              spacing: 8,
              children: [
                SnChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                SnChoiceChip(text: 'Red', selected: false, onSelected: (value){},),
                SnChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SnSectionHeading(title: 'Size',showActionButton: false,),
            const SizedBox(height: SnSizes.spaceBtwItems /2,),
            Wrap(
              spacing: 8,
              children: [
                SnChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                SnChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                SnChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
              ],
            )

          ],
        )
      ],
    );
  }
}
