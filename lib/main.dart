import 'package:flutter/material.dart';
import 'package:islami_app/core/providersetting.dart';
import 'package:islami_app/modules/Layout/Layout.dart';
import 'package:islami_app/modules/SplashScreen.dart';
import 'package:islami_app/modules/hadit/haditcontent.dart';
import 'package:islami_app/modules/quran/suracuntant.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'core/apptheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'modules/radio/Api/RadioApi.dart';
import 'modules/radio/RadioProvider/RadioProvider.dart';

void main() {
  RadioApi().getRadio();
  runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(context)=>ProvderSetting()),
  ChangeNotifierProvider(create:(context)=>RdioProvider())
    ],

    child: home(),
  )
  );

}
class home extends StatelessWidget {
   home({super.key});

  @override
  Widget build(BuildContext context) {
    ProvderSetting provider =Provider.of<ProvderSetting>(context);
    return  MaterialApp(
locale: Locale(provider.langCode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'islami',
      theme: Apptheme.lightMode,
    darkTheme:Apptheme.DarkeMode ,
      themeMode:provider.themmodeApp ,
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
