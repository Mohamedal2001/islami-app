import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/providersetting.dart';
import 'package:islami_app/modules/quran/quranpage.dart';
import 'package:provider/provider.dart';

class SuraContent extends StatefulWidget {
  static const String routname = 'suraContant';


   SuraContent({super.key});

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  @override
  Widget build(BuildContext context) {
    ProvderSetting provider=Provider.of<ProvderSetting>(context);
    var them =Theme.of(context);
    var suraC = ModalRoute
        .of(context)!
        .settings
        .arguments as Suradata;
    if(content.isEmpty)loadQuran(suraC.SuraNumber);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.BK()),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(title:  Text('اسلامي',style: them.textTheme.bodyMedium,)),
        body: Container(
          padding: EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
          margin: EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
              provider.isDark()?
              Color(0XFF141A2E).withOpacity(0.9):
              Color(0XFFF8F8F8).withOpacity(0.9)

          ),
          child: Column(children: [

            Text(
                'سورة ${suraC.suraName}'),
            Divider(thickness: 3,),
            Expanded(
              child: ListView.builder(
                  itemCount:listSura.length ,
                  itemBuilder: (context, index){
                return Text('(${index+1})${listSura[index]}',textAlign: TextAlign.center,style: them.textTheme.bodySmall,);
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