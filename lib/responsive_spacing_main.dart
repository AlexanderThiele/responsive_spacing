import 'package:responsive_spacing/models/breakpoints.dart';
import 'package:responsive_spacing/models/responsive_collection.dart';
import 'package:responsive_spacing/models/responsive_layout_columns.dart';

/// Global Responsive Settings class
///
/// Set your own defaults by calling [setDefaults] in your main.
///
/// ```dart
/// void main() {
///   ResponsiveSpacing.setDefaults(
///     globalBreakpoints: Breakpoints(
///       xl: const BreakpointEntry(1920, enabled: true),
///       lg: const BreakpointEntry(1440),
///       md: const BreakpointEntry(1240),
///       sm2: const BreakpointEntry(905),
///       sm1: const BreakpointEntry(600),
///     ),
///     globalGutter: MyResponsiveGutters(),
///     globalPadding: MyResponsivePadding()
///   );
///
///   runApp(const MyApp());
/// }
/// ```
abstract class ResponsiveSpacing {
  /// Global Breakpoints
  static Breakpoints globalBreakpoints = Breakpoints();

  /// Global Responsive Functions
  static ResponsiveCollection globalBody = const ResponsiveBodyCollection();
  static ResponsiveCollection globalMargin = const ResponsiveMarginCollection();
  static ResponsiveCollection globalPadding =
      const ResponsivePaddingCollection();
  static ResponsiveCollection globalGutter = const ResponsiveGutterCollection();
  static ResponsiveLayoutColumnCollection globalColumns =
      const ResponsiveLayoutColumnCollection();

  /// Overwrite the default values if needed.
  ///
  /// An Example of [globalGutter] would be:
  ///
  /// ```dart
  /// class MyResponsiveGutters extends ResponsiveCollection {
  ///   @override
  ///   ScaledSize fallback(double width) => const ScaledSize(size: 8);
  ///
  ///   @override
  ///   ScaledSize lg(double width) => const ScaledSize(size: 8);
  ///
  ///   @override
  ///   ScaledSize md(double width) => const ScaledSize(size: 8);
  ///
  ///   @override
  ///   ScaledSize sm1(double width) => const ScaledSize(size: 8);
  ///
  ///   @override
  ///   ScaledSize sm2(double width) => const ScaledSize(size: 8);
  ///
  ///   @override
  ///   ScaledSize xl(double width) => const ScaledSize(size: 8);
  ///
  ///   @override
  ///   ScaledSize xs(double width) => const ScaledSize(size: 8);
  /// }
  /// ```
  static setDefaults({
    Breakpoints? globalBreakpoints,
    ResponsiveCollection? globalBody,
    ResponsiveCollection? globalMargin,
    ResponsiveCollection? globalPadding,
    ResponsiveCollection? globalGutter,
    ResponsiveLayoutColumnCollection? globalColumns,
  }) {
    if (globalBreakpoints != null) {
      ResponsiveSpacing.globalBreakpoints = globalBreakpoints;
    }
    if (globalBody != null) {
      ResponsiveSpacing.globalBody = globalBody;
    }
    if (globalMargin != null) {
      ResponsiveSpacing.globalMargin = globalMargin;
    }
    if (globalPadding != null) {
      ResponsiveSpacing.globalPadding = globalPadding;
    }
    if (globalGutter != null) {
      ResponsiveSpacing.globalGutter = globalGutter;
    }
    if (globalColumns != null) {
      ResponsiveSpacing.globalColumns = globalColumns;
    }
  }
}
