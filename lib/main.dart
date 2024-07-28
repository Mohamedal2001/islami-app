import 'package:flutter/material.dart';
import 'package:islami_app/modules/Layout/Layout.dart';
import 'package:islami_app/modules/SplashScreen.dart';
import 'package:islami_app/modules/quran/suracuntant.dart';

import 'core/apptheme.dart';
import 'modules/hadit/haditcontent.dart';

void main() {
  runApp( home());
}
class home extends StatelessWidget {
   home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'islami',
      theme: Apptheme.lightMode,
      debugShowCheckedModeBanner: false,
      initialRoute:'/',
        routes: {
          SplashScreen.routname:(context)=> const SplashScreen(),
          Layout.routname:(context)=> const Layout(),
          Haditcontent.routname:(context)=>Haditcontent(),
          SuraContent.routname:(context)=>SuraContent()
    },
    );
  }
}
