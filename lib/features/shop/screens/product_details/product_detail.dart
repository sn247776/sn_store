import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sn_store/common/widgets/icons/circular_icon.dart';
import 'package:sn_store/common/widgets/images/sn_rounded_image.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/product_image_slider_with_app_bar.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sn_store/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return   const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
             SnProductImageSliderWithAppBar(),
            /// 2 - Product Details
            Padding(padding: EdgeInsets.only(right: SnSizes.defaultSpace,left: SnSizes.defaultSpace,bottom: SnSizes.defaultSpace),
            child: Column(
              children: [
                /// - Rating & Share Button
                SnRatingAndShare(),
                /// - Price, Title, Stock & Brand
                SnProductMetaData(),
                /// -- Attributes
                SnProductAttributes(),
                /// -- Checkout Button
                /// - Description
                /// - Reviews
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}




