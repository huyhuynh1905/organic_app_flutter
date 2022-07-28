import 'package:flutter/material.dart';

import '../presenter/login_screen.dart';
import '../presenter/register_screen.dart';
import '../presenter/splash_screen.dart';

class RouteApp{
  static Map<String, WidgetBuilder> routeApp(BuildContext context) {
    return <String, WidgetBuilder>{
      "/" : (context) => SplashScreen(),
      "/login": (context) => LoginScreen(),
      "/register": (context) => RegisterScreen()
    };
  }
}