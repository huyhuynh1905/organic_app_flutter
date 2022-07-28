import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimens.dart';

class AppTextStyle extends TextStyle {
  const AppTextStyle._({
    required String fontFamily,
    required double fontSize,
    required Color color,
    required FontWeight fontWeight,
  }) : super(
      fontFamily: fontFamily,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight);

  factory AppTextStyle(
      {String fontFamily = 'Ubuntu', //Đây là font từ common/yaml
        required double fontSize,
        required Color color,
        FontWeight fontWeight = FontWeight.w400}) =>
      AppTextStyle._(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight);

  static final defaultUbuntu =
  AppTextStyle(fontSize: Dimens.sp(13), color: Colors.black);

  static final s11Ubuntu =
  AppTextStyle(fontSize: Dimens.sp(11), color: Colors.black);

  static final s12Ubuntu =
  AppTextStyle(fontSize: Dimens.sp(12), color: Colors.black);

  static final s14Ubuntu =
  AppTextStyle(fontSize: Dimens.sp(14), color: Colors.black);

  static final s15Ubuntu =
  AppTextStyle(fontSize: Dimens.sp(15), color: Colors.black);

  static final s16Ubuntu =
  AppTextStyle(fontSize: Dimens.sp(16), color: Colors.black);

  static final titleTextName =
  AppTextStyle(fontSize: Dimens.sp(20), color: AppColors.grayText);
}
