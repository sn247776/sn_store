import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/list_tiles/profile_tile.dart';
import 'package:sn_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:sn_store/common/widgets/texts/section_heading.dart';
import 'package:sn_store/features/personalization/screens/profile/profile.dart';
import 'package:sn_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            SnPrimaryHeaderContainer(
                child: Column(
              children: [
                SnAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: SnColors.white),
                  ),
                ),

                /// User Profile Card
                SnUserProfileTile(onPressed: () => Get.to(()=> const ProfileScreen())),
                const SizedBox(
                  height: SnSizes.spaceBtwSections,
                ),
              ],
            )),

            /// Body

            Padding(
              padding: const EdgeInsets.all(SnSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  const SnSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: SnSizes.spaceBtwItems,
                  ),

                  SnSettingMenuTile(
                    icon: Iconsax.safe_home,
                    onTap: () {},
                    title: 'My Addresses',
                    subTitle:
                        'Manage and update your shopping delivery addresses.',
                  ),
                  SnSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                    title: 'My Cart',
                    subTitle:
                        'View and manage items in your shopping cart, and proceed to checkout.',
                  ),
                  SnSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    onTap: () {},
                    title: 'My Orders',
                    subTitle: 'Track and view details of your past orders.',
                  ),
                  SnSettingMenuTile(
                    icon: Iconsax.bank,
                    onTap: () {},
                    title: 'Bank Account',
                    subTitle:
                        'Manage your linked bank account details for payments.',
                  ),
                  SnSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    onTap: () {},
                    title: 'My Coupons',
                    subTitle:
                        'View and manage your available coupons and discounts.',
                  ),
                  SnSettingMenuTile(
                    icon: Iconsax.notification,
                    onTap: () {},
                    title: 'Notifications',
                    subTitle: 'Customize your notification preferences.',
                  ),
                  SnSettingMenuTile(
                    icon: Iconsax.security_card,
                    onTap: () {},
                    title: 'Account Privacy',
                    subTitle:
                        'Adjust privacy settings and manage account security.',
                  ),

                  /// -- App Settings
                  const SizedBox(height: SnSizes.spaceBtwSections,),
                  const SnSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: SnSizes.spaceBtwItems,),
                  SnSettingMenuTile(
                    icon: Iconsax.document_upload,
                    onTap: () {},
                    title: 'Load Data',
                    subTitle:
                    'Upload Data to your Cloud',
                  ),
                  SnSettingMenuTile(
                    icon: Iconsax.location,
                    onTap: () {},
                    title: 'Geolocation',
                    subTitle:
                    'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){},),
                  ),

                  SnSettingMenuTile(
                    icon: Iconsax.security_user,
                    onTap: () {},
                    title: 'Safe Mode',
                    subTitle:
                    'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){},),
                  ),

                  SnSettingMenuTile(
                    icon: Iconsax.image,
                    onTap: () {},
                    title: 'HD Image Quality',
                    subTitle:
                    'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value){},),
                  ),

                  /// --- Logout Button
                  const SizedBox(height: SnSizes.spaceBtwSections,),
                  SizedBox(width: double.infinity,
                  child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),),),
                  const SizedBox(height: SnSizes.spaceBtwSections * 2.5),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
