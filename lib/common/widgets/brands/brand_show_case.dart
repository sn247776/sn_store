import 'package:flutter/material.dart';
import 'package:sn_store/common/products/products/brand_card.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnBrandShowcase extends StatelessWidget {
  const SnBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SnRoundedContainer(
      showBorder: true,
      borderColor: SnColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding:const EdgeInsets.all(SnSizes.md),
      margin:const EdgeInsets.only(bottom: SnSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const SnBrandCard(showBorder: false,),
          const SizedBox(height: SnSizes.spaceBtwItems,),
          /// Brand Top3 Product Images
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context){
    return  Expanded(
      child: SnRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(SnSizes.md),
        margin: const EdgeInsets.only(right: SnSizes.sm),
        backgroundColor: SnHelperFunctions.isDarkMode(context)? SnColors.darkerGrey : SnColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}