import 'package:ecommerce/utils/constants/size.dart';
import 'package:flutter/widgets.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddinWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace,
  );
}
