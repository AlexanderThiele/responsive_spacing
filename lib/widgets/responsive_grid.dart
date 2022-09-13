import 'package:flutter/material.dart';
import 'package:responsive_spacing/extensions/responsive_data_extension.dart';
import 'package:responsive_spacing/widgets/spacing.dart';

class ResponsiveGrid extends StatelessWidget {
  final List<Widget> children;

  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  final bool? primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final int axisSpaces;

  const ResponsiveGrid(
      {required this.children,
      this.scrollDirection = Axis.vertical,
      this.reverse = false,
      this.controller,
      this.primary,
      this.physics,
      this.shrinkWrap = false,
      this.axisSpaces = 2,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount:
          (Spacing.of(context).layoutColumns.columns / axisSpaces).round(),
      padding: Spacing.of(context).allEdgeInsets,
      mainAxisSpacing: Spacing.of(context).gutter.size,
      crossAxisSpacing: Spacing.of(context).gutter.size,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      children: children,
    );
  }
}
