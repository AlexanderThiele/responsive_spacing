import 'package:flutter/material.dart';
import 'package:responsive_spacing/extensions/scaled_size_extension.dart';
import 'package:responsive_spacing/widgets/spacing.dart';

/// It is basically a Card with a padding
class ResponsiveCard extends Card {
  /// This card adds padding around the Card to fit the sizes
  const ResponsiveCard({
    super.key,
    super.color,
    super.shadowColor,
    super.surfaceTintColor,
    super.elevation,
    super.shape,
    super.borderOnForeground = true,
    super.clipBehavior,
    super.child,
    super.semanticContainer = true,
  }) : super(margin: EdgeInsets.zero);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Spacing.of(context).margin.horizontalEdgeInsets,
      child: super.build(context),
    );
  }
}
