import 'package:flutter/material.dart';

class ConfigColors {
  static final Color c1C1C1E = ColorsFormate.hexColor(0x1C1C1E);
  static final Color cFFDA00 = ColorsFormate.hexColor(0xFFDA00);

  static final Color oc1C1C1E = ColorsFormate.hexColor(0x1C1C1E, alpha: 0.45);
}

class ColorsFormate {
  static Color hexColor(int hex, {double alpha = 1}) {
    if (alpha > 1) {
      alpha = 1;
    } else if (alpha < 0) {
      alpha = 0;
    }
    return Color.fromRGBO((hex & 0xFF0000) >> 16, (hex & 0x00FF00) >> 8,
        (hex & 0x0000FF) >> 0, alpha);
  }
}
