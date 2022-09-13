import 'package:flutter/material.dart';
import 'package:responsive_spacing/models/layout_columns.dart';
import 'package:responsive_spacing/models/scaled_size.dart';

class ResponsiveData {
  final ScaledSize margin;
  final ScaledSize padding;
  final ScaledSize gutter;
  final ScaledSize body;
  final LayoutColumns layoutColumns;

  ResponsiveData(BuildContext context)
      : margin = ScaledMargin.find(MediaQuery.of(context).size.width),
        padding = ScaledPadding.find(MediaQuery.of(context).size.width),
        gutter = ScaledGutter.find(MediaQuery.of(context).size.width),
        body = ScaledBody.find(MediaQuery.of(context).size.width),
        layoutColumns = LayoutColumns.find(MediaQuery.of(context).size.width);

  ResponsiveData.standard()
      : margin = ScaledMargin.standard(),
        padding = ScaledPadding.standard(),
        gutter = ScaledGutter.standard(),
        body = ScaledBody.standard(),
        layoutColumns = LayoutColumns.standard() {
    // ignore: avoid_print
    print(
        "WARNING: Standard responsive scaling is used. This usually happens if you use don't use the ResponsiveScaffold or the wrong context.");
  }
}
