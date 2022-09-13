class LayoutColumns{
  int columns;


  static LayoutColumns find(double screenWidth) {
    if (screenWidth >= 1440) {
      return LayoutColumns.lg();
    }
    if (screenWidth >= 1240) {
      return LayoutColumns.md();
    }
    if (screenWidth >= 905) {
      return LayoutColumns.sm2();
    }
    if (screenWidth >= 600) {
      return LayoutColumns.sm1();
    }
    return LayoutColumns.xs();
  }

  LayoutColumns(this.columns);

  LayoutColumns.standard() : columns = 4;

  /// Large 1440+ screens
  LayoutColumns.lg() : columns = 12;

  /// 1240 - 1439
  LayoutColumns.md() : columns = 12;

  /// 905 - 1239
  LayoutColumns.sm2() : columns = 12;

  /// 600 - 904
  LayoutColumns.sm1() : columns = 8;

  /// 0 - 599
  LayoutColumns.xs() : columns = 4;
}