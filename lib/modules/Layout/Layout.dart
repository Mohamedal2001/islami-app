
import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadit/haditpage.dart';
import 'package:islami_app/modules/radio/radio.dart';
import 'package:islami_app/modules/sebha/Sebhapage.dart';
import 'package:islami_app/modules/quran/quranpage.dart';

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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image:AssetImage('assets/image/default_bg.png') ,fit: BoxFit.cover)
      ),
      child: Scaffold(
        body: Thepage[index],
        appBar: AppBar(title: const Text('اسلامي'),),
      bottomNavigationBar:BottomNavigationBar(
        onTap: (value){
          index=value;
          setState(() {

          });
        },
        currentIndex: index,
        selectedLabelStyle: Apptheme.lightMode.textTheme.displaySmall,
        // Theme.of(context).textTheme.displaySmall,
        items: const [
       BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_quran.png')),label: 'quran'),
       BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_hadeth.png')),label: 'hadit'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_radio.png')),label: 'radio'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/icon_sebha.png')),label: 'sebha'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting')
        ],
      ) ,
      ),
    );
  }
}
