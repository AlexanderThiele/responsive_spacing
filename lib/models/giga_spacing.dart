import '../responsive_spacing_main.dart';
import 'breakpoints.dart';

/// holds the default values
///
/// OVERRIDE for custom Values
///
/// Override any if you only have one set of Spacings
///
/// ```
/// class MyGigaSpacing extends GigaSpacingCollection {
///   @override
///   GigaSpacing get any => const GigaSpacing(
///         xxxs: 2.0,
///         xxs: 8.0,
///         xs: 10.0,
///         s: 12.0,
///         m: 16.0,
///         l: 24.0,
///         xl: 30.0,
///         xxl: 40.0,
///         xxxl: 46.0,
///         xxxxl: 64.0,
///       );
/// }
///```
class GigaSpacingCollection {
  const GigaSpacingCollection();

  /// Value for breakpoint which is by default
  ///
  /// Large 1920+ screens
  GigaSpacing get xl => const GigaSpacing.xl();

  /// Value for breakpoint which is by default
  ///
  /// Large 1440+ screens
  GigaSpacing get lg => const GigaSpacing.lg();

  /// Value for breakpoint which is by default
  ///
  /// 1240 - 1439 screens
  GigaSpacing get md => const GigaSpacing.md();

  /// Value for breakpoint which is by default
  ///
  /// 905 - 1239 Screens
  GigaSpacing get sm2 => const GigaSpacing.sm2();

  /// Value for breakpoint which is by default
  ///
  /// 600 - 904 Screens
  GigaSpacing get sm1 => const GigaSpacing.sm1();

  /// Value for breakpoint which is by default
  ///
  /// 0 - 599 Screens
  GigaSpacing get xs => const GigaSpacing.xs();

  /// Override any if you don't want any responsive spacings
  GigaSpacing? get any => null;
}

/// Giga spacing class to define the giga Spacing Values
class GigaSpacing {
  final double xxxs;
  final double xxs;
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;
  final double xxxl;
  final double xxxxl;

  const GigaSpacing({
    this.xxxs = 2.0,
    this.xxs = 8.0,
    this.xs = 10.0,
    this.s = 12.0,
    this.m = 16.0,
    this.l = 24.0,
    this.xl = 30.0,
    this.xxl = 40.0,
    this.xxxl = 46.0,
    this.xxxxl = 64.0,
  });

  /// Large 1920+ screens
  const GigaSpacing.xl()
      : this(
          xxxs: 2 * 2.0,
          xxs: 2 * 8.0,
          xs: 2 * 10.0,
          s: 2 * 12.0,
          m: 2 * 16.0,
          l: 2 * 24.0,
          xl: 2 * 30.0,
          xxl: 2 * 40.0,
          xxxl: 2 * 46.0,
          xxxxl: 2 * 64.0,
        );

  /// Large 1440+ screens
  const GigaSpacing.lg()
      : this(
          xxxs: 2 * 2.0,
          xxs: 2 * 8.0,
          xs: 2 * 10.0,
          s: 2 * 12.0,
          m: 2 * 16.0,
          l: 2 * 24.0,
          xl: 2 * 30.0,
          xxl: 2 * 40.0,
          xxxl: 2 * 46.0,
          xxxxl: 2 * 64.0,
        );

  /// 1240 - 1439
  const GigaSpacing.md()
      : this(
          xxxs: 2.0,
          xxs: 8.0,
          xs: 10.0,
          s: 12.0,
          m: 16.0,
          l: 24.0,
          xl: 30.0,
          xxl: 40.0,
          xxxl: 46.0,
          xxxxl: 64.0,
        );

  /// 905 - 1239
  const GigaSpacing.sm2()
      : this(
          xxxs: 2.0,
          xxs: 8.0,
          xs: 10.0,
          s: 12.0,
          m: 16.0,
          l: 24.0,
          xl: 30.0,
          xxl: 40.0,
          xxxl: 46.0,
          xxxxl: 64.0,
        );

  /// 600 - 904
  const GigaSpacing.sm1()
      : this(
          xxxs: 2.0,
          xxs: 8.0,
          xs: 10.0,
          s: 12.0,
          m: 16.0,
          l: 24.0,
          xl: 30.0,
          xxl: 40.0,
          xxxl: 46.0,
          xxxxl: 64.0,
        );

  /// 0 - 599
  const GigaSpacing.xs()
      : this(
          xxxs: 2.0,
          xxs: 8.0,
          xs: 10.0,
          s: 12.0,
          m: 16.0,
          l: 24.0,
          xl: 30.0,
          xxl: 40.0,
          xxxl: 46.0,
          xxxxl: 64.0,
        );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GigaSpacing &&
          runtimeType == other.runtimeType &&
          xxxs == other.xxxs &&
          xxs == other.xxs &&
          xs == other.xs &&
          s == other.s &&
          m == other.m &&
          l == other.l &&
          xl == other.xl &&
          xxl == other.xxl &&
          xxxl == other.xxxl &&
          xxxxl == other.xxxxl;

  @override
  int get hashCode =>
      xxxs.hashCode ^
      xxs.hashCode ^
      xs.hashCode ^
      s.hashCode ^
      m.hashCode ^
      l.hashCode ^
      xl.hashCode ^
      xxl.hashCode ^
      xxxl.hashCode ^
      xxxxl.hashCode;
}

/// Extension so that it cannot be overwritten by users
///
/// adds the find function which selects the right value
extension GigaSpacingCollectionFind on GigaSpacingCollection {
  GigaSpacing find(double width) {
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
