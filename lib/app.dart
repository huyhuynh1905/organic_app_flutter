import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_bloc/common/resource/app_themes.dart';
import 'package:organic_bloc/core/providers/app_theme_provider.dart';
import 'package:organic_bloc/core/providers/locale_provider.dart';
import 'package:organic_bloc/core/providers/providers.dart';
import 'package:organic_bloc/core/router/application_route.dart';
import 'package:organic_bloc/core/router/routers.dart';
import 'package:organic_bloc/di/injection_container.dart';
import 'package:organic_bloc/utils/localization_extension.dart';
import 'package:organic_bloc/utils/responsive_utils.dart';
import 'package:provider/provider.dart';
import 'core/blocs/app_bloc.dart';
import 'package:organic_bloc/l10n/app_localizations.dart';
import 'core/blocs/app_event.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    ApplicationRoute.router = router;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build context locale: ${context.locale}');

    return MultiProvider(
      providers: Providers.providers,
      builder: (context,child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<AppBloc>(
              create: (context) => AppBloc()..add(InitAppEvent(context)),
            ),
          ],
          child: ChangeNotifierProvider<AppThemesProvider>( //Provider này dùng để đổi màu themese của app
            create: (context) => AppThemesProvider(),
            child: Consumer<AppThemesProvider>(
              builder: (context,themes,_) {
                final localeProvider = getIt<LocaleProvider>();
                return MaterialApp(
                  builder: (context, child){
                    ResponsiveConfig().responsive = Responsive(size: MediaQuery.of(context).size); //lấy size responsive
                    return child ?? const Scaffold();
                  },
                  theme: AppThemes.lightTheme,
                  darkTheme: AppThemes.darkTheme,
                  themeMode: themes.isDarkThemes!=null ? themes.isDarkThemes ? ThemeMode.dark : ThemeMode.light : ThemeMode.system,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  locale: localeProvider.locale,
                  onGenerateRoute: ApplicationRoute.router?.generator,
                  initialRoute: Routes.root,
                );
              }
            ),
          )
        );
      }
    );
  }
}
