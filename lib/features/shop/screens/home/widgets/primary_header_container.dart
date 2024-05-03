import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sn_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sn_store/utils/constants/colors.dart';

class SnPrimaryHeaderContainer extends StatelessWidget {
  const SnPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return    SnCurvedEdgeWidget(
      child: Container(
        color: SnColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: SnCircularContainer(backgroundColor: SnColors.textWhite.withOpacity(0.1),),),
              Positioned(top: 100, right: -300, child: SnCircularContainer(backgroundColor: SnColors.textWhite.withOpacity(0.1),),),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
