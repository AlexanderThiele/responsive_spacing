import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_spacing/widgets/spacing.dart';

class ResponsiveScaffold extends Scaffold {
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

class _ResponsiveScaffoldState extends ScaffoldState {
  @override
  Widget build(BuildContext context) {
    return Spacing(context: context, child: super.build(context));
  }
}
