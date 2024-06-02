import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:get/get.dart';
import 'package:sn_store/common/widgets/texts/section_heading.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/product_image_slider_with_app_bar.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:sn_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SnBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const SnProductImageSliderWithAppBar(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: SnSizes.defaultSpace,
                  left: SnSizes.defaultSpace,
                  bottom: SnSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share Button
                  const SnRatingAndShare(),

                  /// - Price, Title, Stock & Brand
                  const SnProductMetaData(),

                  /// -- Attributes
                  const SnProductAttributes(),
                  const SizedBox(
                    height: SnSizes.spaceBtwSections,
                  ),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(
                    height: SnSizes.spaceBtwSections,
                  ),

                  /// - Description
                  const SnSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: SnSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    'This is a Product description This is a Product description This is a Product description This is a Product description This is a Product description This is a Product description This is a Product description This is a Product description ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(
                    height: SnSizes.spaceBtwItems,
                  ),
                  SnSectionHeading(
                    title: 'Reviews(20)',
                    onPressed: () => Get.to(() => const ProductReviews()),
                  ),
                  const SizedBox(
                    height: SnSizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
