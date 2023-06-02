import 'package:flutter/cupertino.dart';
import 'package:responsive_spacing/extensions/context_extension.dart';
import 'package:responsive_spacing/widgets/gutter.dart';
import 'package:responsive_spacing/widgets/page_margin.dart';

///
/// It divides the page into 2 widgets,
///
/// on big screens it places the widgets next to each other, on smaller screens, it places it below each other
///
class PageDivider2 extends StatelessWidget {
  final Widget first;
  final Widget second;

  const PageDivider2({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    if (context.spacingConfig.layoutColumns.columns < 12) {
      return PageMargin(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Flexible(child: first), const GutterColumn(), Flexible(child: second)],
        ),
      );
    }
    return PageMargin(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Expanded(child: first), const GutterRow(), Expanded(child: second)]),
    );
  }
}
