
import 'package:flutter/material.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/device/device_utility.dart';

class SnRatingProgressIndicator extends StatelessWidget {
  const SnRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,child: Text(text, style: Theme.of(context).textTheme.bodyMedium,),),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: SnDeviceUtils.getScreenWidth(context) * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                borderRadius: BorderRadius.circular(7),
                backgroundColor: SnColors.grey,
                valueColor: const AlwaysStoppedAnimation(SnColors.primary),
              ),
            )
        )
      ],
    );
  }
}