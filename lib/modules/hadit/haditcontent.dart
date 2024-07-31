import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/providersetting.dart';
import 'package:islami_app/modules/hadit/haditpage.dart';
import 'package:provider/provider.dart';

class Haditcontent extends StatelessWidget {
  static const String routname = 'haditContant';
  Haditcontent ({super.key});

  @override
  Widget build(BuildContext context) {
    ProvderSetting provider=Provider.of<ProvderSetting>(context);
   var  them = Theme.of(context);
    var haditC = ModalRoute
        .of(context)!
        .settings
        .arguments as Hadit;
    return Container(
    decoration:  BoxDecoration(
    image: DecorationImage(
    image: AssetImage(provider.BK()),
    fit: BoxFit.cover)
    ),
    child: Scaffold(
    appBar: AppBar(title: const Text('اسلامي'),),
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
'${haditC.title}'),
Divider(thickness: 3,),
  Expanded(
    child: ListView.builder(itemBuilder: (context,index){
      return   Text(
          '${haditC.body}',textAlign: TextAlign.center,
      style: them.textTheme.bodySmall,
      );
    }),
  )

],),
),
),
);;
  }




}
