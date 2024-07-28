import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadit/haditcontent.dart';

import '../../core/apptheme.dart';

class Haditpage extends StatefulWidget {
   Haditpage({super.key});

  @override
  State<Haditpage> createState() => _HaditpageState();
}

class _HaditpageState extends State<Haditpage> {

  @override
  Widget build(BuildContext context) {
print(ListOfHadit.isEmpty);
if(ListOfHadit.isEmpty)loadhadit();

    return
           Column(

      children: [
        Image.asset('assets/image/hadeth_logo.png'),
        Divider(thickness: 3,),
        Text("الاحاديث",style: Apptheme.lightMode.textTheme.bodyMedium),
        Divider(thickness: 3,),
        Expanded(
          child: ListView.builder(
              itemCount: ListOfHadit.length,
              itemBuilder: (context,index){
            return InkWell(
                onTap: (){
                  Navigator.pushNamed(
                    arguments: Hadit(title: ListOfHadit[index].title, body: ListOfHadit[index].body),
                      context, Haditcontent.routname);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(

                    '${ListOfHadit[index].title}',textAlign: TextAlign.center,),
                ));
          }),
        )
      ],
    );

  }



  List<Hadit> ListOfHadit=[];
  Future<void> loadhadit() async {

    String  content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>  Allhadit =content.split('#');
    print(Allhadit[50]);

    for(int i = 0; i<Allhadit.length-1; i++){
      String singleHadit =Allhadit[i].trim();
      int lengthtitle = singleHadit.indexOf("\n");
      print(lengthtitle);
      String title = singleHadit.substring(0,lengthtitle);
      String content = singleHadit.substring(lengthtitle+1);

      Hadit haditData =Hadit(title: title, body: content);

      ListOfHadit.add(haditData);
    }

setState(() {

});

  }
}
class Hadit{
  String title;
  String body;
  Hadit({required this.title,required this.body});

}

