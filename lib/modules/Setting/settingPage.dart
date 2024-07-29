import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
class Settingpage extends StatefulWidget {
    Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text('language'),
        ),
    DropdownButtonHideUnderline(
        child: DropdownButton2<String>(

          hint: Text(
            'select',
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

          value: selectedValue,
          onChanged: (String? value) {
print(value);
setState(() {

});
          },
          buttonStyleData:  ButtonStyleData(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              border: Border.all(color:Colors.black26),
              color:Colors.white
            ),
            padding: EdgeInsets.symmetric(horizontal: 50),

          ),

        ),
      ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text('them'),
        ),
        DropdownButtonHideUnderline(

          child: DropdownButton2<String>(
            hint: Text(
              'select',
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
            value: selectedValue,
            onChanged: (String? value) {
              print(value);
              setState(() {

              });
            },
            buttonStyleData:  ButtonStyleData(
    decoration: BoxDecoration(
      color: Colors.white,
    borderRadius: BorderRadius.circular(14),
    border: Border.all(
    color: Colors.black26,
    ),
    ),
              padding: EdgeInsets.symmetric(horizontal: 60),

            ),
            menuItemStyleData: const MenuItemStyleData(

            ),
          ),
        ),
  ]
    );
  }
}

