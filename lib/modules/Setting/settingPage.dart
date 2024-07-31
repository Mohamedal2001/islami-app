import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:provider/provider.dart';

import '../../core/providersetting.dart';
class Settingpage extends StatefulWidget {
    Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  String SelectLang="English";
  String Selectitem='Light';
  final List<String> langitem = [
    'عربي',
    'English',

  ];
  final List<String> thems = [
    'Light',
    'Dark',

  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    ProvderSetting provider =Provider.of<ProvderSetting>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 55,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('language'),
        ),
    DropdownButtonHideUnderline(

        child: Container(
          margin: EdgeInsets.all(10),
          child: DropdownButton2<String>(
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
            ),
            hint: Text(
              SelectLang,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: langitem
                .map(
                    (String item) => DropdownMenuItem<String>(
          
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ))
                .toList(),
          
          
            onChanged: (String? value) {
              SelectLang=value!;
          if(value=="عربي"){
            provider.changLanguage('ar');
          }
          if(value=="English"){
            provider.changLanguage('en');
          }
            },
            buttonStyleData:  ButtonStyleData(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                border: Border.all(color:Colors.black26),
                color:Colors.white
              ),
          
          
            ),
          
          ),
        ),
      ),
        SizedBox(height: 55,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('them'),
        ),
        DropdownButtonHideUnderline(

          child: Container(
            margin: EdgeInsets.all(10),
            child: DropdownButton2<String>(

              hint: Text(
                Selectitem,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: thems
                  .map(
                      (String item) => DropdownMenuItem<String>(

                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                  .toList(),

              onChanged: (String? value) {
                     Selectitem=value!;
                if(value=="Dark"){
                  provider.changthem(ThemeMode.dark);
                }
                if(value=="Light"){
                  provider.changthem(ThemeMode.light);
                }
              },
              buttonStyleData:  ButtonStyleData(
                decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                color: Colors.black26,
                ),
                ),


              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
              ),

            ),
          ),
        ),
  ]
    );
  }
}

