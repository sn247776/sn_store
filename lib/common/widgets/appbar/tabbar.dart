import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/device/device_utility.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SnTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// if you want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSize] widget and that's why created custom class. [PreferredSizeWidget]

  const SnTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: SnHelperFunctions.isDarkMode(context) ? SnColors.black : SnColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: SnColors.primary,
        unselectedLabelColor: SnColors.darkerGrey,
        labelColor: SnHelperFunctions.isDarkMode(context) ? SnColors.white : SnColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SnDeviceUtils.getAppBarHeight());
}
