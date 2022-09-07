import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:organic_bloc/core/router/application_route.dart';
import 'package:organic_bloc/core/router/routers.dart';

import '../common/resource/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    super.initState();
    Timer(const Duration(seconds: 2),(){
      ApplicationRoute.router?.navigateTo(
        context,
        Routes.signIn,
        clearStack: true,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.bgSplashScreen
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/7.5,),
            Lottie.asset(
              'assets/images/icon_splash_screen.json',
              width: 300,
              height: 250,
              fit: BoxFit.cover,
            ),
            /*ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/image_splash.jpg",
                height: 150,
                width: MediaQuery.of(context).size.width/1.2,
                fit: BoxFit.cover,
              ),
            ),*/
            const SizedBox(height: 35,),
            Text(
              "Organic Shop",
              style: GoogleFonts.ubuntu(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 26
                )
              )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/3,),
            const CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.orange)
            ),
          ],
        ),
      ),
    );
  }
}
