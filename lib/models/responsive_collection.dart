import 'package:responsive_spacing/responsive_spacing.dart';

/// Extension so that it cannot be overwritten by users
///
/// adds the find function which selects the right value
extension ResponsiveCollectionFind<T> on ResponsiveCollection<T> {
  T find(double width) {
    Breakpoints globalBreakpoints = ResponsiveSpacing.globalBreakpoints;
    if (globalBreakpoints.xl.enabled && width >= globalBreakpoints.xl.width) {
      return xl(width);
    }
    if (globalBreakpoints.lg.enabled && width >= globalBreakpoints.lg.width) {
      return lg(width);
    }
    if (globalBreakpoints.md.enabled && width >= globalBreakpoints.md.width) {
      return md(width);
    }
    if (globalBreakpoints.sm2.enabled && width >= globalBreakpoints.sm2.width) {
      return sm2(width);
    }
    if (globalBreakpoints.sm1.enabled && width >= globalBreakpoints.sm1.width) {
      return sm1(width);
    }
    return xs(width);
  }
}

/// Main Collection class
///
/// Overwrite to create your own
abstract class ResponsiveCollection<T> {
  T xs(double width);

  T sm1(double width);

  T sm2(double width);

  T md(double width);

  T lg(double width);

  T xl(double width);

  const ResponsiveCollection();
}

class ResponsiveBodyCollection extends ResponsiveCollection<ScaledSize> {
  const ResponsiveBodyCollection();

  @override
  ScaledSize xl(double width) => const ScaledBody.xl();

  @override
  ScaledSize lg(double width) => const ScaledBody.lg();

  @override
  ScaledSize md(double width) => ScaledBody.md(width);

  @override
  ScaledSize sm2(double width) => const ScaledBody.sm2();

  @override
  ScaledSize sm1(double width) => ScaledBody.sm1(width);

  @override
  ScaledSize xs(double width) => ScaledBody.xs(width);

}

class ResponsiveMarginCollection extends ResponsiveCollection<ScaledSize> {
  const ResponsiveMarginCollection();

  @override
  ScaledSize xl(double width) => ScaledMargin.xl(width);

  @override
  ScaledSize lg(double width) => ScaledMargin.lg(width);

  @override
  ScaledSize md(double width) => const ScaledMargin.md();

  @override
  ScaledSize sm2(double width) => ScaledMargin.sm2(width);

  @override
  ScaledSize sm1(double width) => const ScaledMargin.sm1();

  @override
  ScaledSize xs(double width) => const ScaledMargin.xs();
}

class ResponsivePaddingCollection extends ResponsiveCollection<ScaledSize> {
  const ResponsivePaddingCollection();

  @override
  ScaledSize xl(double width) => const ScaledPadding.xl();

  @override
  ScaledSize lg(double width) => const ScaledPadding.lg();

  @override
  ScaledSize md(double width) => const ScaledPadding.md();

  @override
  ScaledSize sm2(double width) => const ScaledPadding.sm2();

  @override
  ScaledSize sm1(double width) => const ScaledPadding.sm1();

  @override
  ScaledSize xs(double width) => const ScaledMargin.xs();
}

class ResponsiveGutterCollection extends ResponsiveCollection<ScaledSize> {
  const ResponsiveGutterCollection();

  @override
  ScaledSize xl(double width) => const ScaledGutter.xl();

  @override
  ScaledSize lg(double width) => const ScaledGutter.lg();

  @override
  ScaledSize md(double width) => const ScaledGutter.md();

  @override
  ScaledSize sm2(double width) => const ScaledGutter.sm2();

  @override
  ScaledSize sm1(double width) => const ScaledGutter.sm1();

  @override
  ScaledSize xs(double width) => const ScaledGutter.xs();
}
