
import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class SnSocialButtons extends StatelessWidget {
  const SnSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SnColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: SnSizes.iconMd,
                height: SnSizes.iconMd,
                image: AssetImage(SnImages.google),
              )),
        ),
        const SizedBox(
          width: SnSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SnColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: SnSizes.iconMd,
                height: SnSizes.iconMd,
                image: AssetImage(SnImages.facebook),
              )),
        ),
      ],
    );
  }
}