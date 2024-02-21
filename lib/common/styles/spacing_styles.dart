import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/sizes.dart';

class SpacingStyleCommon {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: SizesConst.appBarHeight,
    left: SizesConst.defaultSpace,
    right: SizesConst.defaultSpace,
    bottom: SizesConst.defaultSpace,
  );
}
