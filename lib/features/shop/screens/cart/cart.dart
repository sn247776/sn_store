import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/icons/circular_icon.dart';
import 'package:sn_store/common/widgets/images/sn_rounded_image.dart';
import 'package:sn_store/common/widgets/texts/product_price_text.dart';
import 'package:sn_store/common/widgets/texts/product_title_text.dart';
import 'package:sn_store/common/widgets/texts/sn_brand_title_text_with_verified_icon.dart';
import 'package:sn_store/features/shop/screens/cart/widegets/cart_item.dart';
import 'package:sn_store/features/shop/screens/cart/widegets/cart_quantity_add_remove.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SnAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(SnSizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(
                  height: SnSizes.spaceBtwSections,
                ),
            itemCount: 4,
            itemBuilder: (_, index) => const Column(
                  children: [
                    SnCartItem(),
                    SizedBox(
                      height: SnSizes.spaceBtwItems,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            /// Extra Space
                            SizedBox(width: 70,),
                            SnCartQuantityAddRemove(),
                          ],
                        ),


                        SnProductPriceText(price: '366')
                      ],
                    )
                  ],
                )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SnSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: Text('Checkout \$256.0'),),
      ),
    );
  }
}


