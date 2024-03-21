
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/device/device_utility.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return Positioned(
        right: SnSizes.defaultSpace,
        bottom: SnDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape:const CircleBorder(), backgroundColor: dark ? SnColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}