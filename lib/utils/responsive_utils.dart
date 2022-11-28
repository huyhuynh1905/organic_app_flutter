import 'package:flutter/material.dart';

extension IntResponsiveExtension on int {
  double get r =>
      this * ResponsiveConfig().responsive.size.height /
          ResponsiveConfig().responsive.ratioSize.height;

  double get rw =>
      this *
          ResponsiveConfig().responsive.size.width /
          ResponsiveConfig().responsive.ratioSize.width;

  double get ratio => ResponsiveConfig().responsive.ratioSize.width / this;
}

extension DoubleResponsiveExtension on double {
  double get r =>
      this *
          ResponsiveConfig().responsive.size.height /
          ResponsiveConfig().responsive.ratioSize.height;

  double get rw =>
      this *
          ResponsiveConfig().responsive.size.width /
          ResponsiveConfig().responsive.ratioSize.width;

  double get ratio => ResponsiveConfig().responsive.ratioSize.width / this;
}

extension WidgetResponsiveExtension on Widget {
  double get width => ResponsiveConfig().responsive.size.width;
  double get height => ResponsiveConfig().responsive.size.height;
  double get ratio => ResponsiveConfig().responsive.ratio;
}

extension StateResponsiveExtension<T extends StatefulWidget> on State<T> {
  double get width => ResponsiveConfig().responsive.size.width;
  double get height => ResponsiveConfig().responsive.size.height;
  double get ratio => ResponsiveConfig().responsive.ratio;
}

class ResponsiveConfig {
  static final ResponsiveConfig _instance = ResponsiveConfig._internal();

  ResponsiveConfig._internal();

  factory ResponsiveConfig() {
    return _instance;
  }

  late Responsive responsive;
}

class Responsive {
  final Size size;
  final Size ratioSize;
  late double ratio;

  Responsive({required this.size, this.ratioSize = const Size(375, 812)}) {
    ratio = ratioSize.width / ratioSize.height;
  }
}
