import 'package:flutter/material.dart';
import 'package:responsive_spacing/responsive_spacing.dart';

/// Inherited Widget that has the ResponsiveData Class
///
/// Use the .of static method to receive the Spacing data
class Spacing extends InheritedWidget {
  final ResponsiveData responsiveData;
  final GigaSpacing gigaSpacing;
  final SimpleSpacing spacing;

  /// generates the responsiveData
  Spacing({
    required double width,
    required super.child,
    Key? key,
  })  : responsiveData = ResponsiveData(width),
        gigaSpacing = ResponsiveSpacing.globalGigaSpacing.find(width),
        spacing = ResponsiveSpacing.globalSpacing.find(width),
        super(key: key);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static ResponsiveData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Spacing>()?.responsiveData ??
        (throw AssertionError("No Spacing found in context. Please use the ResponsiveScaffold"));
  }

  static SimpleSpacing spacingOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Spacing>()?.spacing ??
        (throw AssertionError("No Spacing found in context. Please use the ResponsiveScaffold"));
  }

  static GigaSpacing gigaSpacingOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Spacing>()?.gigaSpacing ??
        (throw AssertionError("No Spacing found in context. Please use the ResponsiveScaffold"));
  }
}
