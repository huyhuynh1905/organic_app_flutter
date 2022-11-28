import 'package:organic_bloc/common/resource/app_image.dart';
import 'package:organic_bloc/utils/localization_extension.dart';
import 'package:organic_bloc/utils/widget_utils/background_image.dart';
import 'package:organic_bloc/utils/widget_utils/red_text_button.dart';
import 'package:organic_bloc/utils/widget_utils/text_input.dart';
import 'package:organic_bloc/utils/widget_utils/text_input_pass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            BackgroundWidget(
              imageProvider: AppImage.getImgPvdRegisterBgk(),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.1,),
                    Center(
                      child: Text(
                        context.locale!.textRegister,
                        style: GoogleFonts.lobster(
                          color: Colors.white,
                          fontSize: 30
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.1,),
                    TextFieldEmail(
                      iconData: Icons.account_circle_rounded,
                      hintText: context.locale!.hintEdtName,
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldEmail(
                      iconData: Icons.email_outlined,
                      hintText: "Email",
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldEmail(
                      iconData: Icons.home_outlined,
                      hintText: context.locale!.hintEdtAddr,
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldPassword(
                      iconData: Icons.lock_outline,
                      hintText: context.locale!.hintEdtPass,
                    ),
                    SizedBox(height: size.height * 0.02,),
                    TextFieldPassword(
                      iconData: Icons.lock_outline,
                      hintText: context.locale!.hintEdtRePass,
                    ),
                    SizedBox(height: size.height *0.03,),
                    RedTextButton(
                      radius: 10,
                      widthButton: size.width/1.1,
                      heightButton: 60,
                      tittle: context.locale!.textRegister,
                    ),
                    SizedBox(height: size.height *0.03,),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            context.locale!.textRegister,
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
                              context.locale!.textBtnLogin,
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
