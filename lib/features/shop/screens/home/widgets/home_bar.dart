import 'package:flutter/material.dart';
import 'package:sn_store/common/products/cart/cart_menu_icon.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/text_strings.dart';

class SnHomeAppBar extends StatelessWidget {
  const SnHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SnAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SnTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: SnColors.grey),),
          Text(SnTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: SnColors.white),),
        ],
      ),
      actions: [
        SnCartCounterIcon(onPressed: (){}, iconColor: SnColors.white,)
      ],
    );
  }
}