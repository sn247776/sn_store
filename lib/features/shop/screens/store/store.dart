import 'package:flutter/material.dart';
import 'package:sn_store/common/products/cart/cart_menu_icon.dart';
import 'package:sn_store/common/products/products/brand_card.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/appbar/tabbar.dart';
import 'package:sn_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sn_store/common/widgets/layout/grid_layout.dart';
import 'package:sn_store/common/widgets/texts/section_heading.dart';
import 'package:sn_store/features/shop/screens/store/widget/category_tab.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SnAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            SnCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: SnHelperFunctions.isDarkMode(context)
                      ? SnColors.black
                      : SnColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(SnSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: SnSizes.spaceBtwItems,
                        ),

                        /// -- Search bar
                        const SnSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: SnSizes.spaceBtwSections,
                        ),

                        /// Featured Brands
                        SnSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        const SizedBox(height: SnSizes.spaceBtwItems / 1.5),

                        SnGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const SnBrandCard(
                                showBorder: false,
                              );
                            })
                      ],
                    ),
                  ),

                  /// Tabs
                  bottom: const SnTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Funiture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  ))
            ];
          },
          body: const TabBarView(
            children: [
              SnCategoryTab(),
              SnCategoryTab(),
              SnCategoryTab(),
              SnCategoryTab(),
              SnCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
