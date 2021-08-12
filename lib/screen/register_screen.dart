import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organic_app_flutter/mywidget/background_image.dart';
import 'package:organic_app_flutter/mywidget/red_text_button.dart';
import 'package:organic_app_flutter/mywidget/text_input.dart';
import 'package:organic_app_flutter/mywidget/text_input_pass.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            BackgroundWidget(pathImage: "assets/images/image_register_bg.jpg",),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.1,),
                    Center(
                      child: Text(
                        "Đăng kí tài khoản",
                        style: GoogleFonts.lobster(
                          color: Colors.white,
                          fontSize: 30
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.1,),
                    TextFieldEmail(
                      iconData: Icons.account_circle_rounded,
                      hintText: "Tên người dùng",
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldEmail(
                      iconData: Icons.email_outlined,
                      hintText: "Email",
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldEmail(
                      iconData: Icons.home_outlined,
                      hintText: "Địa chỉ",
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldPassword(
                      iconData: Icons.lock_outline,
                      hintText: "Mật khẩu",
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldPassword(
                      iconData: Icons.lock_outline,
                      hintText: "Nhập lại mật khẩu",
                    ),
                    SizedBox(height: size.height *0.03,),
                    RedTextButton(
                      radius: 10,
                      widthButton: size.width/1.1,
                      heightButton: 60,
                      tittle: "Đăng kí tài khoản",
                    ),
                    SizedBox(height: size.height *0.03,),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Đã có tài khoản? ',
                            style: GoogleFonts.mulish(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Click text Login");
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Đăng nhập',
                              style: GoogleFonts.mulish(
                                color: Colors.red,
                                fontSize: 16
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}