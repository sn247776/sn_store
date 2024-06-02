import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sn_store/common/products/rating/rating_indicator.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/common/widgets/images/sn_images_avatar.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SnImagesAvatar(image: SnImages.userProfileImage1),
                const SizedBox(
                  width: SnSizes.spaceBtwItems,
                ),
                Text(
                  'Sagar Nirwal',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(
          height: SnSizes.spaceBtwItems,
        ),

        /// Review
        Row(
          children: [
            const SnRatingBarIndicator(rating: 4),
            const SizedBox(
              width: SnSizes.spaceBtwItems,
            ),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: SnSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'here is the the text by the user here is the the text by the user here is the the text by the user here is the the text by the user ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: SnColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: SnColors.primary),
        ),
        const SizedBox(
          height: SnSizes.spaceBtwItems,
        ),
        SnRoundedContainer(
          backgroundColor: dark ? SnColors.darkerGrey : SnColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(SnSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sn Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '02 Nov, 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: SnSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'here is the the text by the user here is the the text by the user here is the the text by the user here is the the text by the user ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: SnColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: SnColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: SnSizes.spaceBtwItems),
      ],
    );
  }
}
