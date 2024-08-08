
import 'package:flutter/material.dart';
import 'package:islami_app/core/providersetting.dart';
import 'package:islami_app/modules/hadit/haditpage.dart';
import 'package:islami_app/modules/radio/radio.dart';
import 'package:islami_app/modules/sebha/Sebhapage.dart';
import 'package:islami_app/modules/quran/quranpage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/apptheme.dart';
import '../Setting/settingPage.dart';

class Layout extends StatefulWidget {

  static const String routname= 'Layout';
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  int index=0;
  List<Widget>  Thepage=[
    Quranpage(),
    Haditpage(),
    Radiopage(),
    Sebhapage(),
    Settingpage(),
  ];
  @override
  Widget build(BuildContext context) {
    var lang =AppLocalizations.of(context)!;
  ProvderSetting provider = Provider.of<ProvderSetting>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image:AssetImage(provider.BK()) ,fit: BoxFit.cover)
      ),
      child: Scaffold(
        body: Thepage[index],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:  Text(lang.islami),),
        bottomNavigationBar:BottomNavigationBar(

          onTap: (value){
            index=value;
            setState(() {

            });
          },
          currentIndex: index,
          selectedLabelStyle: Apptheme.lightMode.textTheme.displaySmall,
          // Theme.of(context).textTheme.displaySmall,
          items:  [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_quran.png')),label: lang.quran),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_hadeth.png')),label: lang.hadit),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_radio.png')),label: lang.radio),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_sebha.png')),label: lang.tasbeh),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: lang.setting)
          ],
        ) ,
      ),
    );
  }
}
