import 'package:responsive_spacing/responsive_spacing.dart';

class MySimpleSpacing extends SpacingCollection {
  @override
  SimpleSpacing get any => const SimpleSpacing(
        xs: 2.0,
        s: 60.0,
        m: 12.0,
        l: 16.0,
        xl: 32.0,
        xxl: 56.0,
      );

  @override
  SimpleSpacing get sm1 => md;

  @override
  SimpleSpacing get sm2 => md;
}
