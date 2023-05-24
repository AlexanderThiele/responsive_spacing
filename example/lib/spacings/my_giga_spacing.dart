import 'package:responsive_spacing/responsive_spacing.dart';

class MyGigaSpacing extends GigaSpacingCollection {
  @override
  GigaSpacing get sm2 => const GigaSpacing(
        xxxs: 2.0,
        xxs: 6.0,
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
  GigaSpacing get md => const GigaSpacing(
        xxxs: 2.0,
        xxs: 6.0,
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
  GigaSpacing get lg => const GigaSpacing(
        xxxs: 2 * 2.0,
        xxs: 2 * 6.0,
        xs: 2 * 10.0,
        s: 2 * 12.0,
        m: 2 * 16.0,
        l: 2 * 24.0,
        xl: 2 * 30.0,
        xxl: 2 * 40.0,
        xxxl: 2 * 46.0,
        xxxxl: 2 * 64.0,
      );

  @override
  GigaSpacing get xl => const GigaSpacing(
        xxxs: 4 * 2.0,
        xxs: 4 * 6.0,
        xs: 4 * 10.0,
        s: 4 * 12.0,
        m: 4 * 16.0,
        l: 4 * 24.0,
        xl: 4 * 30.0,
        xxl: 4 * 40.0,
        xxxl: 4 * 46.0,
        xxxxl: 4 * 64.0,
      );
}
