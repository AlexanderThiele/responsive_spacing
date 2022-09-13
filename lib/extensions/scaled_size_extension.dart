import 'package:flutter/material.dart';
import 'package:responsive_spacing/models/scaled_size.dart';

extension ScaledSizeEdgeInsetsHelper on ScaledSize {
  EdgeInsets get horizontalEdgeInsets {
    return EdgeInsets.symmetric(horizontal: size);
  }

  EdgeInsets get verticalEdgeInsets {
    return EdgeInsets.symmetric(vertical: size);
  }

  EdgeInsets get allEdgeInsets {
    return EdgeInsets.all(size);
  }
}
