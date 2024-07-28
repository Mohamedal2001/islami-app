import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/quran/quranpage.dart';

class SuraContent extends StatefulWidget {
  static const String routname = 'suraContant';


   SuraContent({super.key});

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  @override
  Widget build(BuildContext context) {
    var suraC = ModalRoute
        .of(context)!
        .settings
        .arguments as Suradata;
    if(content.isEmpty)loadQuran(suraC.SuraNumber);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/default_bg.png'),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('اسلامي'),),
        body: Container(
          padding: EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
          margin: EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFFF8F8F8).withOpacity(0.9)),
          child: Column(children: [

            Text(
                'سورة ${suraC.suraName}'),
            Divider(thickness: 3,),
            Expanded(
              child: ListView.builder(
                  itemCount:listSura.length ,
                  itemBuilder: (context, index){
                return Text('(${index+1})${listSura[index]}',textAlign: TextAlign.center,);
              }),
            )

          ],),
        ),
      ),
    );
  }
  String content='';
  List<String> listSura=[];
  Future<void> loadQuran(String suranum) async {
     content = await rootBundle.loadString('assets/files/${suranum}.txt');
     listSura =content.split('\n');
     print(listSura[1]);
     print(content);
    setState(() {

    });

  }
}