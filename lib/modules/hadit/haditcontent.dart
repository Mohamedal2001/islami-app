import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadit/haditpage.dart';

class Haditcontent extends StatelessWidget {
  static const String routname = 'haditContant';
  Haditcontent ({super.key});

  @override
  Widget build(BuildContext context) {
    var haditC = ModalRoute
        .of(context)!
        .settings
        .arguments as Hadit;
    return Container(
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/image/dark_bg.png'),
    fit: BoxFit.cover)
    ),
    child: Scaffold(
    appBar: AppBar(title: const Text('اسلامي'),),
    body: Container(
    padding: EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
    margin: EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
    decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
color: Color(0XFF141A2E).withOpacity(0.9)),
child: Column(children: [

Text(
'${haditC.title}'),
Divider(thickness: 3,),
  Expanded(
    child: ListView.builder(itemBuilder: (context,index){
      return   Text(
          '${haditC.body}',textAlign: TextAlign.center,);
    }),
  )

],),
),
),
);;
  }




}
