import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/texts/sn_brand)title_text.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/enums.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class SnTitleWithVerifiedIcon extends StatelessWidget {
  const SnTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = SnColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: SnBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSizes: brandTextSizes,
        )),

        const SizedBox(width: SnSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: SnColors.primary,
          size: SnSizes.iconXs,
        )
      ],
    );
  }
}
