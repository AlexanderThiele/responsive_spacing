import 'package:flutter/cupertino.dart';
import 'package:responsive_spacing/extensions/context_extension.dart';
import 'package:responsive_spacing/extensions/scaled_size_extension.dart';

/// Wraps the page inside the horizontal margin
class PageMargin extends StatelessWidget {
  final Widget child;

  const PageMargin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.spacingConfig.margin.horizontalEdgeInsets,
      child: child,
    );
  }
}
