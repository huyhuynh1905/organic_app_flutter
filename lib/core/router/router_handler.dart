import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
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

// ///Auth
// Handler signInHandler =
// Handler(handlerFunc: (context, Map<String, List<String>> params) {
//   return SignInPage();
// });
// Handler signUpHandler =
// Handler(handlerFunc: (context, Map<String, List<String>> params) {
//   return SignUpPage();
// });
// Handler forgotPasswordHandler =
// Handler(handlerFunc: (context, Map<String, List<String>> params) {
//   return ForgotPasswordPage();
// });
//
///Home
Handler mainIntroHandler =
Handler(handlerFunc: (context, Map<String, List<String>> params) {
  //return const IntroMainScreen();
});
