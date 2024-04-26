
import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnVerticalImageText extends StatelessWidget {
  const SnVerticalImageText({
    super.key, required this.image, required this.title, this.textColor = SnColors.white, this.backgroundColor, this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SnSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(SnSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? SnColors.black : SnColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? SnColors.light : SnColors.dark,
                ),
              ),
            ),

            /// Text
            const SizedBox(height: SnSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}