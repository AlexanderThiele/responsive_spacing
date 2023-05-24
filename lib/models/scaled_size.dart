class ScaledSize {
  final bool isFlexible;
  final double size;

  const ScaledSize({required this.size, this.isFlexible = false});

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

  /// Large 1920+ screens
  const ScaledBody.xl() : super(isFlexible: false, size: 1040);

  /// Large 1440+ screens
  const ScaledBody.lg() : super(isFlexible: false, size: 1040);

  /// 1240 - 1439
  const ScaledBody.md(double width)
      : super(isFlexible: true, size: width - 200 * 2);

  /// 905 - 1239
  const ScaledBody.sm2() : super(isFlexible: false, size: 840);

  /// 600 - 904
  const ScaledBody.sm1(double width)
      : super(isFlexible: true, size: (width - 32 * 2));

  /// 0 - 599
  const ScaledBody.xs(double width)
      : super(isFlexible: true, size: (width - 16 * 2));
}

class ScaledMargin extends ScaledSize {

  /// Large 1920+ screens
  const ScaledMargin.xl(double width)
      : super(isFlexible: true, size: (width - 1040) / 2);

  /// Large 1440+ screens
  const ScaledMargin.lg(double width)
      : super(isFlexible: true, size: (width - 1040) / 2);

  /// 1240 - 1439
  const ScaledMargin.md() : super(isFlexible: false, size: 200);

  /// 905 - 1239
  const ScaledMargin.sm2(double width)
      : super(isFlexible: true, size: (width - 840) / 2);

  /// 600 - 904
  const ScaledMargin.sm1() : super(isFlexible: false, size: 32);

  /// 0 - 599
  const ScaledMargin.xs() : super(isFlexible: false, size: 16);
}

class ScaledPadding extends ScaledSize {

  /// Large 1920+ screens
  const ScaledPadding.xl() : super(isFlexible: false, size: 24);

  /// Large 1440+ screens
  const ScaledPadding.lg() : super(isFlexible: false, size: 24);

  /// 1240 - 1439
  const ScaledPadding.md() : super(isFlexible: false, size: 24);

  /// 905 - 1239
  const ScaledPadding.sm2() : super(isFlexible: false, size: 16);

  /// 600 - 904
  const ScaledPadding.sm1() : super(isFlexible: false, size: 16);

  /// 0 - 599
  const ScaledPadding.xs() : super(isFlexible: false, size: 8);
}

class ScaledGutter extends ScaledSize {

  /// Large 1920+ screens
  const ScaledGutter.xl() : super(isFlexible: false, size: 16);

  /// Large 1440+ screens
  const ScaledGutter.lg() : super(isFlexible: false, size: 16);

  /// 1240 - 1439
  const ScaledGutter.md() : super(isFlexible: false, size: 16);

  /// 905 - 1239
  const ScaledGutter.sm2() : super(isFlexible: false, size: 8);

  /// 600 - 904
  const ScaledGutter.sm1() : super(isFlexible: false, size: 8);

  /// 0 - 599
  const ScaledGutter.xs() : super(isFlexible: false, size: 8);
}
