import 'package:flutter/material.dart';
import 'package:islami_app/modules/Layout/Layout.dart';
import 'package:islami_app/modules/SplashScreen.dart';
import 'package:islami_app/modules/hadit/haditcontent.dart';
import 'package:islami_app/modules/quran/suracuntant.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/apptheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp( home());
}
class home extends StatelessWidget {
   home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
locale: Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'islami',
      theme: Apptheme.DarkeMode,
    //  darkTheme:Apptheme.lightMode ,
     // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute:'/',
        routes: {
          SplashScreen.routname:(context)=> const SplashScreen(),
          Layout.routname:(context)=> const Layout(),
          SuraContent.routname:(context)=>SuraContent(),
          Haditcontent.routname:(context)=>Haditcontent()
    },
    );
  }
}
