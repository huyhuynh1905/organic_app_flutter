import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:organic_bloc/presenter/login_screen.dart';
import 'package:organic_bloc/presenter/register_screen.dart';
import 'package:organic_bloc/presenter/splash_screen.dart';

Handler notHandler = Handler(
  handlerFunc: (context, Map<String, List<String>> params) => Scaffold(
    body: Center(
      child: Text('$params'),
    ),
  ),
);

Handler splashHandler = Handler(
  handlerFunc: (context, Map<String, List<String>> params) => const SplashScreen(),
);

///Auth
Handler signInHandler = Handler(handlerFunc: (context, params) {
  return const LoginScreen();
});

Handler signUpHandler = Handler(handlerFunc: (context, params) {
  return const RegisterScreen();
});

///Home
Handler mainIntroHandler = Handler(handlerFunc: (context, Map<String, List<String>> params) {
  //return const IntroMainScreen();
});
