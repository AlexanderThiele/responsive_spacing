import 'package:flutter/cupertino.dart';
import 'package:responsive_spacing/extensions/context_extension.dart';

///
/// Gutter for use in a Column
///
class GutterColumn extends StatelessWidget {
  const GutterColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: context.spacingConfig.gutter.size);
  }
}

///
/// Gutter for use in a Row
///
class GutterRow extends StatelessWidget {
  const GutterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: context.spacingConfig.gutter.size);
  }
}
