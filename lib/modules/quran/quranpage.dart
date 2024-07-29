import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/suracuntant.dart';

import '../../core/apptheme.dart';
import 'cutomWidget/sura Data.dart';

class Quranpage extends StatelessWidget {
   static  List<String> ArSuras= ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  const Quranpage({super.key});

  @override
  Widget build(BuildContext context) {
    var them =Theme.of(context);
    return
  Column(children: [
   Image.asset('assets/image/qur2an_screen_logo.png',scale: 1.2,),
  const Divider(thickness: 3,),
    Row(children: [
      Expanded(child: Text(
        textAlign: TextAlign.center,
        'عدد الايات',style: them.textTheme.bodyLarge,)),
      SizedBox(
          height: 50,
          child: const VerticalDivider(thickness: 3,)),
      Expanded(child: Text(
        style: them.textTheme.bodyLarge,
        textAlign: TextAlign.center,
        'اسم السورة',),

      ),

    ],

    ),
    const Divider(thickness: 3,),
    Expanded(
      child: ListView.builder(
          itemCount: ArSuras.length,
          itemBuilder: (context,index){
        return InkWell(
          onTap: (){
            Navigator.pushNamed(context, SuraContent.routname
            ,arguments: Suradata(suraName: ArSuras[index], SuraNumber:(index+1).toString())
            );
          },
          child: SuraTitle(data: Suradata(suraName: ArSuras[index], SuraNumber:(index+1).toString())
            ),
        );
      }),
    )
  ],);
  }
}
class Suradata{
  final String suraName;
  final String SuraNumber;
  Suradata({required this.suraName,required this.SuraNumber});

}