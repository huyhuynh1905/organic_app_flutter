import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organic_bloc/common/resource/app_image.dart';
import 'package:organic_bloc/core/providers/locale_provider.dart';
import 'package:organic_bloc/core/router/application_route.dart';
import 'package:organic_bloc/core/router/routers.dart';
import 'package:organic_bloc/di/injection_container.dart';
import 'package:organic_bloc/utils/localization_extension.dart';
import 'package:organic_bloc/utils/responsive_utils.dart';

import '../../common/resource/app_colors.dart';
import '../../domain/entity/language_entity.dart';
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
      body: Stack(
        children: [
          BackgroundWidget(
            imageProvider: AppImage.getImgPvdLoginBgk(),
          ),
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
                SizedBox(height: 20.r,),
                TextFieldPassword(
                  hintText: context.locale!.textRegister,
                  iconData: Icons.lock,
                ),
                SizedBox(height: 15.r,),
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.1,
                  child: GestureDetector(
                    onTap: () {
                      debugPrint('Click quên mật khẩu');
                    },
                    child: Text(
                      context.locale!.textForgotPass,
                      style: GoogleFonts.mulish(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                SizedBox(height: 15.r,),
                RedTextButton(
                  tittle: context.locale!.textBtnLogin,
                  heightButton: 60,
                  widthButton: MediaQuery.of(context).size.width/1.1,
                  radius: 10,
                ),
                SizedBox(height: 25.r,),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      debugPrint('Click Đăng kí tài khoản');
                      ApplicationRoute.router?.navigateTo(
                        context,
                        Routes.signUp,
                      );
                    },
                    child: Text(
                      context.locale!.textRegister,
                      style: GoogleFonts.mulish(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.r,)
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.05,
            right: size.width * 0.05,
            child: ElevatedButton.icon(
              onPressed: () {
                //
                _showPopupMenuLanguage(size);
              },
              icon: Image.asset(
                context.locale!.langIcon,
                width: 25,
              ),
              label: Text(
                context.locale!.langX,
                style: const TextStyle(color: AppColors.grey57, fontSize: 14)
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
        ],
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
          child: Row(
            children: [
              Image.asset(
                value.linkImage,
                width: 25,
              ),
              SizedBox(width: 10.r,),
              Text(value.tittle)
            ],
          ),
        );
      }).toList()
    ).then((value){
      getIt<LocaleProvider>().setLocale(value!.locale);
      debugPrint('===============X : ${value.locale.languageCode}');
    });
  }
}