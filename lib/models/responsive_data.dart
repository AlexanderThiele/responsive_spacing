import 'package:responsive_spacing/responsive_spacing.dart';

class ResponsiveData {
  final ScaledSize margin;
  final ScaledSize padding;
  final ScaledSize gutter;
  final ScaledSize body;
  final LayoutColumns layoutColumns;

  ResponsiveData(double width)
      : margin = ResponsiveSpacing.globalMargin.find(width),
        padding = ResponsiveSpacing.globalPadding.find(width),
        gutter = ResponsiveSpacing.globalGutter.find(width),
        body = ResponsiveSpacing.globalBody.find(width),
        layoutColumns = ResponsiveSpacing.globalColumns.find(width);

}
