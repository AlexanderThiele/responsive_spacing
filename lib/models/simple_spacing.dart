import '../responsive_spacing_main.dart';
import 'breakpoints.dart';

/// holds the default values
///
/// OVERRIDE for custom Values
///
/// Override any if you only have one set of Spacings
/// ```
/// class MySimpleSpacing extends SpacingCollection {
///
///   @override
///   SimpleSpacing get any => const SimpleSpacing(
///     xs: 2.0,
///     s: 8.0,
///     m: 12.0,
///     l: 16.0,
///     xl: 32.0,
///   xxl: 56.0,
///   );
/// }
/// ```
///
class SpacingCollection {
  const SpacingCollection();

  /// Value for breakpoint which is by default
  ///
  /// Large 1920+ screens
  SimpleSpacing get xl => const SimpleSpacing.xl();

  /// Value for breakpoint which is by default
  ///
  /// Large 1440+ screens
  SimpleSpacing get lg => const SimpleSpacing.lg();

  /// Value for breakpoint which is by default
  ///
  /// 1240 - 1439 screens
  SimpleSpacing get md => const SimpleSpacing.md();

  /// Value for breakpoint which is by default
  ///
  /// 905 - 1239 Screens
  SimpleSpacing get sm2 => const SimpleSpacing.sm2();

  /// Value for breakpoint which is by default
  ///
  /// 600 - 904 Screens
  SimpleSpacing get sm1 => const SimpleSpacing.sm1();

  /// Value for breakpoint which is by default
  ///
  /// 0 - 599 Screens
  SimpleSpacing get xs => const SimpleSpacing.xs();

  /// Override any if you don't want any responsive spacings
  SimpleSpacing? get any => null;
}

class SimpleSpacing {
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;

  const SimpleSpacing({
    this.xs = 2.0,
    this.s = 8.0,
    this.m = 12.0,
    this.l = 16.0,
    this.xl = 32.0,
    this.xxl = 56.0,
  });

  /// Large 1920+ screens
  const SimpleSpacing.xl()
      : this(
          xs: 2 * 2.0,
          s: 2 * 8.0,
          m: 2 * 12.0,
          l: 2 * 16.0,
          xl: 2 * 32.0,
          xxl: 2 * 56.0,
        );

  /// Large 1440+ screens
  const SimpleSpacing.lg()
      : this(
          xs: 2 * 2.0,
          s: 2 * 8.0,
          m: 2 * 12.0,
          l: 2 * 16.0,
          xl: 2 * 32.0,
          xxl: 2 * 56.0,
        );

  /// 1240 - 1439
  const SimpleSpacing.md()
      : this(
          xs: 2.0,
          s: 8.0,
          m: 12.0,
          l: 16.0,
          xl: 32.0,
          xxl: 56.0,
        );

  /// 905 - 1239
  const SimpleSpacing.sm2()
      : this(
          xs: 2.0,
          s: 8.0,
          m: 12.0,
          l: 16.0,
          xl: 32.0,
          xxl: 56.0,
        );

  /// 600 - 904
  const SimpleSpacing.sm1()
      : this(
          xs: 2.0,
          s: 8.0,
          m: 12.0,
          l: 16.0,
          xl: 32.0,
          xxl: 56.0,
        );

  /// 0 - 599
  const SimpleSpacing.xs()
      : this(
          xs: 2.0,
          s: 8.0,
          m: 12.0,
          l: 16.0,
          xl: 32.0,
          xxl: 56.0,
        );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleSpacing &&
          runtimeType == other.runtimeType &&
          xs == other.xs &&
          s == other.s &&
          m == other.m &&
          l == other.l &&
          xl == other.xl &&
          xxl == other.xxl;

  @override
  int get hashCode => xs.hashCode ^ s.hashCode ^ m.hashCode ^ l.hashCode ^ xl.hashCode ^ xxl.hashCode;
}

/// Extension so that it cannot be overwritten by users
///
/// adds the find function which selects the right value
extension SimpleSpacingCollectionFind on SpacingCollection {
  SimpleSpacing find(double width) {
    if (any != null) {
      return any!;
    }
    Breakpoints globalBreakpoints = ResponsiveSpacing.globalBreakpoints;
    if (globalBreakpoints.xl.enabled && width >= globalBreakpoints.xl.width) {
      return xl;
    }
    if (globalBreakpoints.lg.enabled && width >= globalBreakpoints.lg.width) {
      return lg;
    }
    if (globalBreakpoints.md.enabled && width >= globalBreakpoints.md.width) {
      return md;
    }
    if (globalBreakpoints.sm2.enabled && width >= globalBreakpoints.sm2.width) {
      return sm2;
    }
    if (globalBreakpoints.sm1.enabled && width >= globalBreakpoints.sm1.width) {
      return sm1;
    }
    return xs;
  }
}
