import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organic_app_flutter/mywidget/red_text_button.dart';
import 'package:organic_app_flutter/mywidget/text_input.dart';
import 'package:organic_app_flutter/mywidget/text_input_pass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //Không bị resize khi hiển thị keyboard
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) => LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Colors.black87,
                  Colors.transparent
                ]
              ).createShader(rect),
              blendMode: BlendMode.darken,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/loginbkg.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                  )
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Flexible(
                    child: Center(
                      child: Text(
                        'Organic Shop',
                        style: GoogleFonts.lobster(
                          color: Colors.white,
                          fontSize: 50
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/7,),
                  TextFieldEmail(
                    hintText: "Email",
                    iconData: Icons.email_outlined,
                  ),
                  SizedBox(height: 20,),
                  TextFieldPassword(
                    hintText: "Email",
                    iconData: Icons.lock,
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    child: GestureDetector(
                      onTap: () {
                        print('Click quên mật khẩu');
                      },
                      child: Text(
                        'Quên mật khẩu?',
                        style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  RedTextButton(
                    tittle: 'Đăng nhập',
                    heightButton: 60,
                    widthButton: MediaQuery.of(context).size.width/1.1,
                    radius: 10,
                  ),
                  SizedBox(height: 25,),
                  Container(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          print('Click Đăng kí tài khoản');
                        },
                        child: Text(
                          'Đăng kí tài khoản',
                          style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

