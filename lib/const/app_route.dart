import 'package:flutter/material.dart';
import 'package:organic_app_flutter/screen/login_screen.dart';
import 'package:organic_app_flutter/screen/register_screen.dart';
import 'package:organic_app_flutter/screen/splash_screen.dart';

class RouteApp{
  static Map<String, WidgetBuilder> routeApp(BuildContext context) {
    return <String, WidgetBuilder>{
      "/" : (context) => SplashScreen(),
      "/login": (context) => LoginScreen(),
      "/register": (context) => RegisterScreen()
    };
  }
}