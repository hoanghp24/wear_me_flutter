import 'package:flutter/material.dart';
import 'package:wear_me_flutter/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: child,
      ),
    );
  }
}
