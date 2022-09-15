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

  ResponsiveData.fallback()
      : margin = const ScaledMargin.fallback(),
        padding = const ScaledPadding.fallback(),
        gutter = const ScaledGutter.fallback(),
        body = const ScaledBody.fallback(),
        layoutColumns = const LayoutColumns.fallback() {
    // ignore: avoid_print
    print(
        "WARNING: Standard responsive scaling is used. This usually happens if you use don't use the ResponsiveScaffold or the wrong context.");
  }
}
