import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class SnGridLayout extends StatelessWidget {
  const SnGridLayout(
      {super.key,
      required this.itemCount,
      this.mainAxisExtent = 288,
      required this.itemBuilder});

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: SnSizes.gridViewSpacing,
          crossAxisSpacing: SnSizes.gridViewSpacing,
        ),
        itemBuilder: itemBuilder);
  }
}
