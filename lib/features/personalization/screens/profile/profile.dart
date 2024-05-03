import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/images/sn_circular_image.dart';
import 'package:sn_store/common/widgets/texts/section_heading.dart';
import 'package:sn_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SnAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SnSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SnCircularImage(
                      image: SnImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: SnSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: SnSizes.spaceBtwItems),

              const SnSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: SnSizes.spaceBtwItems),

              SnProfileMenu(onPressed: (){}, title:'Name' , value: 'Sagar Nirwal'),
              SnProfileMenu(onPressed: (){}, title:'Username' , value: 'sn247776'),

              const SizedBox(height: SnSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: SnSizes.spaceBtwItems),

              /// Heading Personal Info
              const SnSectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: SnSizes.spaceBtwItems,),

              SnProfileMenu(onPressed: (){}, title:'User ID' , value: '8535099', icon: Iconsax.copy,),
              SnProfileMenu(onPressed: (){}, title:'Username' , value: 'sn247776@gmail.com'),
              SnProfileMenu(onPressed: (){}, title:'Phone Number' , value: '+91 8535039552'),
              SnProfileMenu(onPressed: (){}, title:'Gender' , value: 'Male'),
              SnProfileMenu(onPressed: (){}, title:'Date of Birth' , value: '14 Sep, 2021'),
              const Divider(),
              const SizedBox(height: SnSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
