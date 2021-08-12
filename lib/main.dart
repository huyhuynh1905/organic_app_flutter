import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'const/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        path: 'assets/langs',
        supportedLocales: [
          Locale('en', 'EN'),
          Locale('vi', 'VN')
        ],
        fallbackLocale: Locale('vi', 'VN'),
        child: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Xoá banner Debug khi chạy chế độ debug
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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