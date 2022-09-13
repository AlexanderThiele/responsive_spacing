abstract class ScaledSize {
  final bool isFlexible;
  final double size;

  ScaledSize({required this.isFlexible, required this.size});

  ScaledSize.flexible()
      : isFlexible = true,
        size = 0;

  ScaledSize.fix(this.size) : isFlexible = false;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScaledSize &&
          runtimeType == other.runtimeType &&
          isFlexible == other.isFlexible &&
          size == other.size;

  @override
  int get hashCode => isFlexible.hashCode ^ size.hashCode;
}

class ScaledBody extends ScaledSize {
  static ScaledBody find(double screenWidth) {
    if (screenWidth >= 1440) {
      return ScaledBody.lg();
    }
    if (screenWidth >= 1240) {
      return ScaledBody.md(screenWidth);
    }
    if (screenWidth >= 905) {
      return ScaledBody.sm2();
    }
    if (screenWidth >= 600) {
      return ScaledBody.sm1(screenWidth);
    }
    return ScaledBody.xs(screenWidth);
  }

  ScaledBody.standard() : super(isFlexible: true, size: 0);

  /// Large 1440+ screens
  ScaledBody.lg() : super(isFlexible: false, size: 1040);

  /// 1240 - 1439
  ScaledBody.md(double screenWidth)
      : super(isFlexible: true, size: screenWidth - 200 * 2);

  /// 905 - 1239
  ScaledBody.sm2() : super(isFlexible: false, size: 840);

  /// 600 - 904
  ScaledBody.sm1(double screenWidth)
      : super(isFlexible: true, size: (screenWidth - 32 * 2));

  /// 0 - 599
  ScaledBody.xs(double screenWidth)
      : super(isFlexible: true, size: (screenWidth - 16 * 2));
}

class ScaledMargin extends ScaledSize {
  static ScaledMargin find(double screenWidth) {
    if (screenWidth >= 1440) {
      return ScaledMargin.lg(screenWidth);
    }
    if (screenWidth >= 1240) {
      return ScaledMargin.md();
    }
    if (screenWidth >= 905) {
      return ScaledMargin.sm2(screenWidth);
    }
    if (screenWidth >= 600) {
      return ScaledMargin.sm1();
    }
    return ScaledMargin.xs();
  }

  ScaledMargin.standard() : super(isFlexible: false, size: 16);

  /// Large 1440+ screens
  ScaledMargin.lg(double screenWidth)
      : super(isFlexible: true, size: (screenWidth - 1040) / 2);

  /// 1240 - 1439
  ScaledMargin.md() : super(isFlexible: false, size: 200);

  /// 905 - 1239
  ScaledMargin.sm2(double screenWidth)
      : super(isFlexible: true, size: (screenWidth - 840) / 2);

  /// 600 - 904
  ScaledMargin.sm1() : super(isFlexible: false, size: 32);

  /// 0 - 599
  ScaledMargin.xs() : super(isFlexible: false, size: 16);
}

class ScaledPadding extends ScaledSize {
  static ScaledPadding find(double screenWidth) {
    if (screenWidth >= 1440) {
      return ScaledPadding.lg();
    }
    if (screenWidth >= 1240) {
      return ScaledPadding.md();
    }
    if (screenWidth >= 905) {
      return ScaledPadding.sm2();
    }
    if (screenWidth >= 600) {
      return ScaledPadding.sm1();
    }
    return ScaledPadding.xs();
  }

  ScaledPadding.standard() : super(isFlexible: false, size: 8);

  /// Large 1440+ screens
  ScaledPadding.lg() : super(isFlexible: false, size: 24);

  /// 1240 - 1439
  ScaledPadding.md() : super(isFlexible: false, size: 24);

  /// 905 - 1239
  ScaledPadding.sm2() : super(isFlexible: false, size: 16);

  /// 600 - 904
  ScaledPadding.sm1() : super(isFlexible: false, size: 16);

  /// 0 - 599
  ScaledPadding.xs() : super(isFlexible: false, size: 8);
}

class ScaledGutter extends ScaledSize {
  static ScaledGutter find(double screenWidth) {
    if (screenWidth >= 1440) {
      return ScaledGutter.lg();
    }
    if (screenWidth >= 1240) {
      return ScaledGutter.md();
    }
    if (screenWidth >= 905) {
      return ScaledGutter.sm2();
    }
    if (screenWidth >= 600) {
      return ScaledGutter.sm1();
    }
    return ScaledGutter.xs();
  }

  ScaledGutter.standard() : super(isFlexible: false, size: 16);

  /// Large 1440+ screens
  ScaledGutter.lg() : super(isFlexible: false, size: 16);

  /// 1240 - 1439
  ScaledGutter.md() : super(isFlexible: false, size: 16);

  /// 905 - 1239
  ScaledGutter.sm2() : super(isFlexible: false, size: 8);

  /// 600 - 904
  ScaledGutter.sm1() : super(isFlexible: false, size: 8);

  /// 0 - 599
  ScaledGutter.xs() : super(isFlexible: false, size: 8);
}
