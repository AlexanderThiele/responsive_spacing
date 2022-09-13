import 'package:flutter/material.dart';
import '../models/responsive_data.dart';

extension ResponsiveDataEdgeInsetsHelper on ResponsiveData {
  EdgeInsets get horizontalEdgeInsets {
    return EdgeInsets.symmetric(horizontal: margin.size);
  }

  EdgeInsets get verticalEdgeInsets {
    return EdgeInsets.symmetric(vertical: gutter.size);
  }

  EdgeInsets get allEdgeInsets {
    return EdgeInsets.symmetric(horizontal: margin.size, vertical: gutter.size);
  }
}

extension ResponsiveDataWidgetHelper on ResponsiveData {
  Widget get sizedBoxGutter {
    return SizedBox(height: gutter.size);
  }
}