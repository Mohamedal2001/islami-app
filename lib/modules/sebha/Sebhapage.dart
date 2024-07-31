import 'package:flutter/material.dart';
import 'package:islami_app/core/apptheme.dart';
import 'package:provider/provider.dart';

import '../../core/providersetting.dart';

class Sebhapage extends StatefulWidget {
  const Sebhapage({super.key});

  @override
  State<Sebhapage> createState() => _SebhapageState();
}

class _SebhapageState extends State<Sebhapage> {
  List<String> Tasbeh=['سبحان الله','الحمدالله','الله اكبر'];
  int CounterTasbeh=0;
  int indexTas=0;
  Widget build(BuildContext context) {
    var them=Theme.of(context);
    ProvderSetting provider=Provider.of<ProvderSetting>(context);
    return Scaffold(
      body:
    Center(
      child: Column(
        children: [
          SizedBox(height: 40,),
          Image.asset(

              provider.isDark()?
              'assets/image/head_sebha_dark.png'
                  : 'assets/image/head_sebha_logo.png'
          ),
          Image.asset(
              provider.isDark()?
              'assets/image/body_sebha_dark.png'
          : 'assets/image/body_sebha_logo.png'
          ),
          SizedBox(height: 50,),
          Text('عدد التسبيحات'),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(

              color:
              provider.isDark()?
              Color(0XFF141A2E):
              Color(0XFFB7935F),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text('$CounterTasbeh',style: them.textTheme.bodyMedium,),),
          SizedBox(height: 30,),

         InkWell(
onLongPress: (){
  CounterTasbeh=0;
  setState(() {

  });

},
             onTap: (){
               if(CounterTasbeh==33) {
                 CounterTasbeh = 0;
                 indexTas++;
                 if(indexTas==3){
                   indexTas=0;
                 }
               }

               CounterTasbeh++;
              setState(() {

              });

             },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color:
                    provider.isDark()?
                Color(0XFFFACC1D):
                    Color(0XFFB7935F),
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Text(Tasbeh[indexTas],style: Apptheme.lightMode.textTheme.bodyMedium,),),
            ),

        ],
      ),
    )
    ) ;
  }
}
