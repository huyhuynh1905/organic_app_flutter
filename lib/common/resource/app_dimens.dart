import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Dimens{
  const Dimens._();
  factory Dimens() => const Dimens._();

  //common
  static Size size(BuildContext c) => MediaQuery.of(c).size;
  static double width(BuildContext c) => size(c).width;
  static double height(BuildContext c) => size(c).height;

  //size for padding, margin, width, height
  static const double dimensSize0 = 0.0;
  static const double dimensSize3 = 3.0;
  static const double dimensSize4 = 4.0;
  static const double dimensSize5 = 5.0;
  static const double dimensSize6 = 6.0;
  static const double dimensSize10 = 10.0;
  static const double dimensSize15 = 15.0;
  static const double dimensSize20 = 20.0;
  static const double dimensSize25 = 25.0;
  static const double dimensSize30 = 30.0;
  static const double dimensSize40 = 40.0;
  static const double dimensSize50 = 50.0;
  static const double dimensSize60 = 60.0;
  static const double dimensSize80 = 80.0;
  static const double dimensSize100 = 100.0;

  //size for radius, shape radius
  static const double dimensRadius5 = 5.0;
  static const double dimensRadius8 = 8.0;
  static const double dimensRadius10 = 10.0;
  static const double dimensRadius12 = 12.0;
  static const double dimensRadius15 = 15.0;
  static const double dimensRadius20 = 20.0;
  static const double dimensRadius30 = 30.0;
  static const double dimensRadius40 = 40.0;
  static const double dimensRadius50 = 50.0;

  //size for opacity color, animate
  static const double dimensOpacity04 = 0.4;
  static const double dimensOpacity05 = 0.5;
  static const double dimensOpacity08 = 0.8;
  static const double dimensOpacity09 = 0.9;

  static double paddingTopScreenWithNotch(BuildContext c){
    if(_hasTopOrBottomPadding()){
      return MediaQuery.of(c).padding.top;
    } else {
      return 0;
    }
  }

  ///Check xem màn hình có tai thỏ hay là có padding ở bottom không.
  static bool _hasTopOrBottomPadding() {
    final padding = ui.window.viewPadding;
    return padding.top > 0 || padding.bottom > 0;
  }

  static double paddingBottomScreen(BuildContext c, double size){
    return MediaQuery.of(c).padding.bottom + size;
  }

  //font size
  static double sp(double fontSize) => fontSize;

  //appbar
  static double appBarHeight = AppBar().preferredSize.height;

  //screen
}