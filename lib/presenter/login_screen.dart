import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

import '../common/resource/app_colors.dart';
import '../domain/entity/language_entity.dart';
import 'package:organic_bloc/utils/widget_utils/background_image.dart';
import 'package:organic_bloc/utils/widget_utils/red_text_button.dart';
import 'package:organic_bloc/utils/widget_utils/text_input.dart';
import 'package:organic_bloc/utils/widget_utils/text_input_pass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false, //Không bị resize khi hiển thị keyboard
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            BackgroundWidget(pathImage: "assets/images/loginbkg.png",),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  SizedBox(height: size.height*0.035,),
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
                    hintText: 'hintEdtPass'.tr(),
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
                        'textForgotPass'.tr(),
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
                    tittle: 'textBtnLogin'.tr(),
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
                          Navigator.pushNamed(context, "/register");
                        },
                        child: Text(
                          'textRegister'.tr(),
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
            ),
            Positioned(
              top: size.height * 0.05,
              right: size.width * 0.05,
              child: Container(
                child: ElevatedButton.icon(
                  onPressed: () {
                    //
                    _showPopupMenuLanguage(size);
                  },
                  icon: Image.asset(
                    'langIcon'.tr(),
                    width: 25,
                  ),
                  label: Text(
                    'langX'.tr(),
                    style: TextStyle(color: AppColors.grey57, fontSize: 14)
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(AppColors.greyB8),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    alignment: Alignment.centerLeft
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  _showPopupMenuLanguage(Size size){
    showMenu<LanguageEntity>(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      context: context,
      position: RelativeRect.fromLTRB(100.0, size.height * 0.1, 0.0, 0.0),//position where you want to show the menu on screen
      items: LanguageEntity.languageList().map<PopupMenuItem<LanguageEntity>>((LanguageEntity value) {
        return PopupMenuItem<LanguageEntity>(
          value: value,
          child: Container(
              child: Row(
                children: [
                  Image.asset(
                    value.linkImage,
                    width: 25,
                  ),
                  SizedBox(width: 10,),
                  Text(value.tittle)
                ],
              )
          ),
        );
      }).toList()
    ).then((value){
      //sự kiện click
      context.setLocale(value!.locale);
      print('===============X : ${value.locale.languageCode}');
    });
  }
}