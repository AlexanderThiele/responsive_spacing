import 'package:flutter/material.dart';
import 'package:responsive_spacing/models/giga_spacing.dart';
import 'package:responsive_spacing/models/responsive_data.dart';
import 'package:responsive_spacing/models/simple_spacing.dart';
import 'package:responsive_spacing/widgets/spacing.dart';

///
/// Spacing Context Extension to easily get the spacings
///
extension SpacingContextExtension on BuildContext {
  /// gets the Response data Config
  ResponsiveData get spacingConfig => Spacing.of(this);

  /// gets the simple Spacing Config
  SimpleSpacing get spacing => Spacing.spacingOf(this);

  /// gets the giga spacing Config
  GigaSpacing get gigaSpacing => Spacing.gigaSpacingOf(this);
}
