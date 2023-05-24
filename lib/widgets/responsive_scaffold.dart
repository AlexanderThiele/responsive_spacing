import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_spacing/widgets/spacing.dart';

/// Responsive Scaffold class
///
/// It is just a wrapped Scaffold
///
class ResponsiveScaffold extends Scaffold {
  /// Responsive Scaffold
  ///
  /// This scaffold will create an InheritedWidget with Spacing
  ///
  /// Usage: `Spacing.of(context)`
  ///
  /// ```dart
  ///   final ScaledSize margin;
  ///   final ScaledSize padding;
  ///   final ScaledSize gutter;
  ///   final ScaledSize body;
  ///   final LayoutColumns layoutColumns;
  /// ```
  ///
  const ResponsiveScaffold({
    Key? key,
    super.appBar,
    super.body,
    super.floatingActionButton,
    super.floatingActionButtonLocation,
    super.floatingActionButtonAnimator,
    super.persistentFooterButtons,
    super.drawer,
    super.onDrawerChanged,
    super.endDrawer,
    super.onEndDrawerChanged,
    super.bottomNavigationBar,
    super.bottomSheet,
    super.backgroundColor,
    super.resizeToAvoidBottomInset,
    super.primary = true,
    super.drawerDragStartBehavior = DragStartBehavior.start,
    super.extendBody = false,
    super.extendBodyBehindAppBar = false,
    super.drawerScrimColor,
    super.drawerEdgeDragWidth,
    super.drawerEnableOpenDragGesture = true,
    super.endDrawerEnableOpenDragGesture = true,
    super.restorationId,
  }) : super(key: key);

  @override
  ScaffoldState createState() => _ResponsiveScaffoldState();
}

/// just the state that wraps the Spacing class around the Scaffold
class _ResponsiveScaffoldState extends ScaffoldState {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Spacing(
        width: constraints.maxWidth,
        child: super.build(context),
      ),
    );
  }
}
