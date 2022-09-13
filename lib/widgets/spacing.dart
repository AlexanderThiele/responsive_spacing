import 'package:flutter/material.dart';
import 'package:responsive_spacing/models/responsive_data.dart';

class Spacing extends InheritedWidget {
  final ResponsiveData responsiveData;

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

