import 'package:flutter/material.dart';
import 'package:synonym_valley/src/About/About.dart';
import 'package:synonym_valley/src/colorcustomisation_nav/colorcustomisation_nav.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:synonym_valley/src/home/home.dart';
import 'package:synonym_valley/src/normal_nav/normal_nav.dart';

import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          // localizationsDelegates: const [
          //   AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          // supportedLocales: const [
          //   Locale('en', ''), // English, no country code
          // ],
          debugShowCheckedModeBanner: false,
          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          // onGenerateTitle: (BuildContext context) =>
          //     AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,

           initialRoute: '/',
          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  // case SettingsView.routeName:
                  //   return SettingsView(controller: settingsController);
                  case ColorCustomisation.routeName:
                    return const ColorCustomisation();
                  case NormalNav.routeName:
                    return const NormalNav();
                  case About.routeName:
                    return const About();
                  case Home.routeName:
                  default:
                    return FutureBuilder(
                          future: SharedPreferences.getInstance(),
                          builder:
                          (BuildContext context, AsyncSnapshot<SharedPreferences> prefs) {
                            // print('----------------------------');
                            // print(prefs.data);
                            if (prefs.data != null) {
                              String? route = prefs.data!.getString('navigation');
                              if (route !=null) {
                                switch (route) {
                                  case ColorCustomisation.routeName:
                                    return const ColorCustomisation();
                                  case NormalNav.routeName:
                                    return const NormalNav(); 
                                  default:
                                   return const Home();
                                }
                              }
                            }
                            return const Home();
                          }
                          );
                }
              },
            );
          },
        );
      },
    );
  }
}
