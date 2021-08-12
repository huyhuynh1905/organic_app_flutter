import 'package:flutter/material.dart';
import 'package:organic_app_flutter/screen/splash_screen.dart';

import 'const/app_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: RouteApp.routeApp(context),
      //home: SplashScreen(),
    );
  }
}