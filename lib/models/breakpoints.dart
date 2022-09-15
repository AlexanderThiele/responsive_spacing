/// Collection of Breakpoints
///
/// You can customize the breakpoints by setting your own
///
/// xs is always enabled and from 0 to sm1
class Breakpoints {
  final BreakpointEntry xl;
  final BreakpointEntry lg;
  final BreakpointEntry md;
  final BreakpointEntry sm2;
  final BreakpointEntry sm1;
  final BreakpointEntry xs = const BreakpointEntry(0, enabled: true);

  /// Just overwrite the default values to create your own breakpoints
  ///
  /// Breakpoint of 1920 is disabled by default
  Breakpoints({
    this.xl = const BreakpointEntry(1920, enabled: false),
    this.lg = const BreakpointEntry(1440, enabled: true),
    this.md = const BreakpointEntry(1240, enabled: true),
    this.sm2 = const BreakpointEntry(905, enabled: true),
    this.sm1 = const BreakpointEntry(600, enabled: true),
  });
}

class BreakpointEntry {
  final int width;
  final bool enabled;

  /// [width] If you set the width of 905 then this breakpoint starts at 905
  /// until the next breakpoint.
  ///
  /// [enabled] if true, the breakpoint will be skipped
  const BreakpointEntry(this.width, {this.enabled = true});
}
