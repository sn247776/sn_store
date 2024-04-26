import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/texts/image_text_widgets.dart';
import 'package:sn_store/utils/constants/image_strings.dart';

class SnHomeCategories extends StatelessWidget {
  const SnHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return SnVerticalImageText(image: SnImages.sportIcon, title: 'Shoes', onTap: (){},);
          }),
    );
  }
}