import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:structure_flutter/core/resource/app_localizations.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'JobChat',
      localeResolutionCallback: (deviceLocal, supportedLocale) {
        Locale defaultLocale;
        if(supportedLocale.map((locale) => locale.languageCode)
            .contains(deviceLocal.languageCode)) {
          defaultLocale = deviceLocal;
        } else {
          defaultLocale = AppLocalization.languageDefault;
        }
        return defaultLocale;
      },
      supportedLocales: AppLocalization.languagesSupported,
      localizationsDelegates: [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: ListUserPage(),
    );
  }
}
