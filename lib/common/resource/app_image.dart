import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppImage{
  //lotie
  static getLottieSplash({double? width, double? height}) => Lottie.asset(
    'assets/images/icon_splash_screen.json',
    width: width??300,
    height: height??250,
    fit: BoxFit.cover,
    repeat: false
  );

  //svg

  //image
  static getImgPvdLoginBgk() => const AssetImage(
    "assets/images/loginbkg.png"
  );
  static getImgPvdRegisterBgk() => const AssetImage(
      "assets/images/image_register_bg.jpg"
  );
}