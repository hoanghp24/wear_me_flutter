import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems / 2),
        child: ChoiceChip(
          label: isColor ? const SizedBox() : Text(text),
          selected: selected,
          onSelected: onSelected,
          labelStyle: TextStyle(color: selected ? TColors.white : null),
          avatar: isColor
              ? CircularContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: HelperFunctions.getColor(text)!)
              : null,
          side: isColor ? const BorderSide(color: Colors.transparent) : null,
          labelPadding: isColor ? const EdgeInsets.all(0) : null,
          padding: isColor ? const EdgeInsets.all(0) : null,
          shape: isColor ? const CircleBorder() : null,
          backgroundColor: isColor ? HelperFunctions.getColor(text)! : null,
        ),
      ),
    );
  }
}
