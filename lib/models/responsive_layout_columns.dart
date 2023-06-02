import 'package:responsive_spacing/responsive_spacing.dart';

/// Extension to for no overwrite
///
/// adds the find function which selects the right value
extension ResponsiveLayoutColumnCollectionFind
    on ResponsiveLayoutColumnCollection {
  LayoutColumns find(double width) {
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

/// Basic collection of columns
class ResponsiveLayoutColumnCollection {
  final LayoutColumns xl;
  final LayoutColumns lg;
  final LayoutColumns md;
  final LayoutColumns sm2;
  final LayoutColumns sm1;
  final LayoutColumns xs;

  const ResponsiveLayoutColumnCollection(
      {this.xl = const LayoutColumns.xl(),
      this.lg = const LayoutColumns.lg(),
      this.md = const LayoutColumns.md(),
      this.sm2 = const LayoutColumns.sm2(),
      this.sm1 = const LayoutColumns.sm1(),
      this.xs = const LayoutColumns.xs()});
}

class LayoutColumns {
  final int columns;

  const LayoutColumns(this.columns);

  /// Large 1920+ screens
  const LayoutColumns.xl() : columns = 12;

  /// Large 1440+ screens
  const LayoutColumns.lg() : columns = 12;

  /// 1240 - 1439
  const LayoutColumns.md() : columns = 12;

  /// 905 - 1239
  const LayoutColumns.sm2() : columns = 12;

  /// 600 - 904
  const LayoutColumns.sm1() : columns = 8;

  /// 0 - 599
  const LayoutColumns.xs() : columns = 4;

}
