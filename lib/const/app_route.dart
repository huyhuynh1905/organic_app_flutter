import 'package:flutter/material.dart';

import '../screen/login_screen.dart';
import '../screen/register_screen.dart';
import '../screen/splash_screen.dart';

class RouteApp{
  static Map<String, WidgetBuilder> routeApp(BuildContext context) {
    return <String, WidgetBuilder>{
      "/" : (context) => SplashScreen(),
      "/login": (context) => LoginScreen(),
      "/register": (context) => RegisterScreen()
    };
  }
}