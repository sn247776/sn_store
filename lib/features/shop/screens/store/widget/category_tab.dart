import 'package:flutter/material.dart';
import 'package:sn_store/common/products/products/product_vertical_card.dart';
import 'package:sn_store/common/widgets/brands/brand_show_case.dart';
import 'package:sn_store/common/widgets/layout/grid_layout.dart';
import 'package:sn_store/common/widgets/texts/section_heading.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class SnCategoryTab extends StatelessWidget {
  const SnCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SnSizes.defaultSpace),
          child: Column(
            children: [
              /// --Brands
              const SnBrandShowcase(
                images: [
                  SnImages.productImage3,
                  SnImages.productImage2,
                  SnImages.productImage1
                ],
              ),
              const SizedBox(height: SnSizes.spaceBtwItems,),
              /// Products
              SnSectionHeading(title: 'You might like', onPressed: (){},),
              const SizedBox(height: SnSizes.spaceBtwItems,),
              SnGridLayout(itemCount: 4, itemBuilder:(_, index)=> const SnProductVerticalCard()),
              const SizedBox(height: SnSizes.spaceBtwSections,),
            ],
          ),
        ),
      ]
    );
  }
}
