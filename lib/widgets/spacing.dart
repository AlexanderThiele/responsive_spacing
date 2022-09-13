import 'package:flutter/material.dart';
import 'package:responsive_spacing/models/responsive_data.dart';

/// Inherited Widget that has the ResponsiveData Class
///
/// Use the .of static method to receive the Spacing data
class Spacing extends InheritedWidget {
  final ResponsiveData responsiveData;

  /// generates the responsiveData
  Spacing({
    required BuildContext context,
    required super.child,
    Key? key,
  })  : responsiveData = ResponsiveData(context),
        super(key: key);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static ResponsiveData of(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<Spacing>()
            ?.responsiveData ??
        ResponsiveData.standard();
  }
}
