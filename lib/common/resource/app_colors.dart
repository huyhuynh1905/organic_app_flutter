import 'package:flutter/material.dart';

class AppColors{

  const AppColors._();
  factory AppColors() => const AppColors._();

  //
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color athensGrayApprox = Color(0xFFEFEFF0);
  static const Color mineShaft = Color(0xFF222222);
  static const Color mineShaft30 = Color(0xFF4D222222);
  static const Color black50 = Color(0xFF80000000);
  static const Color athensGray = Color(0xFFF9FAFB);
  static const Color lightAthensGray = Color(0xFFF8F9FA);
  static const Color darkAthensGray = Color(0xFFECEFF2);
  static const Color alabaster = Color(0xFFF8F8F8);
  static const Color iron = Color(0xFFCCD2D9);
  static const Color whiteAlto = Color(0xFFD8D8D8);
  static const Color downriver10 = Color(0xFF1A0A2953);
  static const Color pacificBlue = Color(0xFF07ABB8);
  static const Color persianGreen = Color(0xFF08B794);
  static const Color cerulean = Color(0xFF069EDD);
  static const Color silver = Color(0xFFC8C8C8);
  static const Color silverApprox = Color(0xFFCDCDCD);
  static const Color cinnabar = Color(0xFFF0483C);
  static const Color azureRadiance = Color(0xFF007AFF);
  static const Color sunsetOrange = Color(0xFFFF483C);
  static const Color doveGray = Color(0xFF707070);
  static const Color wildSand = Color(0xFFEAEFF4);
  static const Color grayChateau = Color(0xFF9AA0A7);
  static const Color alto = Color(0xFFE0E0E0);
  static const Color white50 = Color(0xff80ffffff);
  static const Color white70 = Color(0xffb3ffffff);
  static const Color amaranth = Color(0xFFE21B51);
  static const Color raven = Color(0xFF757B83);
  static const Color ghost = Color(0xFFCBCED3);
  static const Color aluminium = Color(0xFFACB1B9);
  static const Color rollingStone = Color(0xFF6B787E);
  static const Color mystic = Color(0xFFE9EDF2);
  static const Color flamingo = Color(0xFFF5483D);
  static const Color flamingo15 = Color(0xFF25F5483D);
  static const Color flamingo30 = Color(0xFF4DF5483D);
  static const Color coolGrey = Color(0xFF9AA09D);
  static const Color dodgerBlue = Color(0xFF3F91FF);
  static const Color ashGray = Color(0xFF4C4C4C);
  static const Color mimeShaftApprox = Color(0xFF252525);
  static const Color black10 = Color(0xFF1A000000);
  static const Color darkDodgerBlue = Color(0xFF1981FB);
  static const Color redOrange = Color(0xFFFA3826);
  static const Color dustyGray = Color(0xFF999999);
  static const Color pacificBlue80 = Color(0xFFCC07ABB8);
  static const Color gray = Color(0xFFE4E7EB);
  static const Color darkIndigo24 = Color(0xFF3D0D1A45);
  static const Color darkGrey = Color(0xFF252A2B);
  static final Color downriver8 = const Color(0xFF0A2953).withOpacity(0.08);
  static const Color backGrColorsPurple = Color(0xFFF6F7FB);
  static const primaryColor = Color(0xFFe53935);
  static const secondaryColor = Color(0xFFffee58);
  static const redColorSplash = Color(0xFFCB1616);
  static const yellowColorSplash = Color(0xFFFF851B);
  static const grey57 = Color(0xFF575757);
  static const greyB8 = Color(0x86B8B8B8);
  static const Color blueFirst = Color(0xFF986EFF);
  static const Color blueEnd = Color(0xFF6D5CFF);
  //Static Const
  static const Color lightRed = Color(0xFFF00408);
  static const Color darkRed = Color(0xFFAF0C22);
  static const Color redFresh = Color(0xFFED1C24);
  static const Color redSelected = Color(0xFFED1B23);
  static const Color redWithAlpha10 = Color(0x1AED1C24);
  static const Color redOverlay = Color(0xFFFFEEEF);
  static const Color grayDisable = Color(0xFF8A8A8A);
  static const Color grayText = Color(0xFF747476);
  static const Color backgroundDefault = Color(0xFFF7F7F7);
  static const Color bkgFaceButton = Color(0xFF3B5998);

  //button dialog
  static const Color firstPos = Color(0xFF26B9D1);
  static const Color secondPos = Color(0xFF13C2B4);
  static const Color colorNev = Color(0xFF3F3A58);

  //Gradient
  static const gradAppBar = LinearGradient(
    colors: [darkRed, lightRed],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const gradButton = LinearGradient(
    colors: [lightRed,darkRed],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const gradFabButton = LinearGradient(
    colors: [lightRed,darkRed],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const gradLoginButton = LinearGradient(
    colors: [blueFirst,blueEnd],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const gradDialogPosButton = LinearGradient(
    colors: [firstPos,secondPos],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static final bgSplashScreen = LinearGradient(
    colors: [
      yellowColorSplash,
      redColorSplash,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  static final List<Color> orangeGradients = [
    Color(0xFFFF9844),
    Color(0xFFFE8853),
    Color(0xFFFD7267),
  ];

}