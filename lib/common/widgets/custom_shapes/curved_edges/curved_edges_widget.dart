import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class SnCurvedEdgeWidget extends StatelessWidget {
  const SnCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SnCustomCurvedEdges(),
      child:child,
    );
  }
}