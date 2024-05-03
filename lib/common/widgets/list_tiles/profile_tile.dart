import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/images/sn_circular_image.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/image_strings.dart';

class SnUserProfileTile extends StatelessWidget {
  const SnUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SnCircularImage(
        image: SnImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Sagar Nirwal',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: SnColors.white),
      ),
      subtitle: Text(
        'sn247776@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: SnColors.white),
      ),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: SnColors.white,),),
    );
  }
}
