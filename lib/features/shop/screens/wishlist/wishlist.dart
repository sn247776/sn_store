import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/products/products/product_vertical_card.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/icons/circular_icon.dart';
import 'package:sn_store/common/widgets/layout/grid_layout.dart';
import 'package:sn_store/features/shop/screens/home/home.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SnAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          SnCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SnSizes.defaultSpace),
          child: Column(
            children: [
              SnGridLayout(itemCount: 6, itemBuilder: (_, index)=> const SnProductVerticalCard())
            ],
          ),
        ),
      ),
    );
  }
}
