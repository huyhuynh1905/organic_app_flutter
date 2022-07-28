import 'package:flutter/material.dart';

import 'app_colors.dart';
/// - Cấu hình màu sắc tổng hợp của app => Phục vụ cho việc quản lý app.
/// - Áp dụng cho việc đổi chủ đề giao diện cho ứng dụng.
/// - @Example:
///   color: Theme.of(context).colorScheme.primary
///
class AppThemes {
  const AppThemes._();

  factory AppThemes() => const AppThemes._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    //fontFamily: FontFamily.helvetica,
    textTheme: ThemeData.light().textTheme.copyWith(
      bodyMedium: ThemeData.light().textTheme.bodyMedium?.copyWith(
        color: Colors.black
      )
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightRed,
    ).copyWith(secondary: AppColors.redOverlay),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.white,
    //fontFamily: FontFamily.helvetica,
    textTheme: ThemeData.light().textTheme.copyWith(
        bodyMedium: ThemeData.light().textTheme.bodyMedium?.copyWith(
            color: Colors.black
        )
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.redOverlay,
    ).copyWith(secondary: AppColors.redOverlay),
  );
}
