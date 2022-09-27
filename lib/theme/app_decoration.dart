import 'package:flutter/material.dart';
import 'package:gautam_kumar_cs_39_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.bluegray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );
}
