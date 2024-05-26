import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

/// -- Most of the Styling is already defined in the Utils -> Themes -> ChipTheme.dart
class SnChoiceChip extends StatelessWidget {
  const SnChoiceChip(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = SnHelperFunctions.getColor(text) != null;

    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? SnColors.white : null),
      avatar: isColor ? SnCircularContainer(width: 50, height: 50,backgroundColor: SnHelperFunctions.getColor(text)!) : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      shape: isColor ? const CircleBorder() : null,
      backgroundColor: isColor ? SnHelperFunctions.getColor(text)! : null,
      selectedColor: isColor ? SnHelperFunctions.getColor(text)! : null,

    );
  }
}
