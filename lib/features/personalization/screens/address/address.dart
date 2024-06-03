import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:sn_store/features/personalization/screens/address/add_new_address.dart';
import 'package:sn_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: SnColors.primary,
          child: const Icon(
            Iconsax.add,
            color: SnColors.white,
          ),
          onPressed: () => Get.to(() => const AddNewAddressScreen())),
      appBar: SnAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SnSizes.defaultSpace),
          child: Column(
            children: [
              SnSingleAddress(selectedAddress: true),
              SnSingleAddress(selectedAddress: false)
            ],
          ),
        ),
      ),
    );
  }
}
