import 'package:flutter/material.dart';
import 'package:sn_store/common/products/products/product_vertical_card.dart';
import 'package:sn_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sn_store/common/widgets/layout/grid_layout.dart';
import 'package:sn_store/common/widgets/texts/section_heading.dart';
import 'package:sn_store/features/shop/screens/home/widgets/home_bar.dart';
import 'package:sn_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:sn_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:sn_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const SnPrimaryHeaderContainer(
                child: Column(
              children: [
                ///Appbar
                SnHomeAppBar(),
                SizedBox(
                  height: SnSizes.spaceBtwSections,
                ),

                ///Searchbar
                SnSearchContainer(text: 'Search in Store'),
                SizedBox(
                  height: SnSizes.spaceBtwSections,
                ),

                ///Categories
                Padding(
                  padding: EdgeInsets.only(left: SnSizes.defaultSpace),
                  child: Column(
                    children: [
                      SnSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: SnSizes.spaceBtwItems,
                      ),

                      /// Categories
                      SnHomeCategories()
                    ],
                  ),
                ),
                SizedBox(height: SnSizes.spaceBtwSections,)
              ],
            )),

            Padding(
              padding: const EdgeInsets.all(SnSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      SnImages.promoBanner1,
                      SnImages.promoBanner2,
                      SnImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: SnSizes.spaceBtwItems,
                  ),

                  SnSectionHeading(title: 'Popular Products', onPressed: (){},),


                  const SizedBox(
                    height: SnSizes.spaceBtwItems,
                  ),

                  SnGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const SnProductVerticalCard())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
