import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnLoginHeader extends StatelessWidget {
  const SnLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? SnImages.lightAppLogo : SnImages.darkAppLogo)),
        Text(
          SnTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: SnSizes.sm,
        ),
        Text(
          SnTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
