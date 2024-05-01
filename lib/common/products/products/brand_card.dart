
import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/common/widgets/images/sn_circular_image.dart';
import 'package:sn_store/common/widgets/texts/sn_brand_title_text_with_verified_icon.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/enums.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnBrandCard extends StatelessWidget {
  const SnBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SnRoundedContainer(
        padding: const EdgeInsets.all(SnSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: SnCircularImage(
                isNetworkImage: false,
                image: SnImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: SnHelperFunctions.isDarkMode(context)
                    ? SnColors.white
                    : SnColors.black,
              ),
            ),
            const SizedBox(width: SnSizes.spaceBtwItems / 2),
            Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SnTitleWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSizes: TextSizes.large,
                    ),
                    Text('256 products',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}