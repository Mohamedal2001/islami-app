import 'package:flutter/material.dart';

class Apptheme{
  static const Color primaryColor=Color(0xFFB7935F);
static ThemeData lightMode =ThemeData(
dividerTheme: DividerThemeData(color: primaryColor),
  primaryColor:primaryColor ,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
    backgroundColor: Colors.transparent
  ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      unselectedItemColor: Color(0xFFF8F8F8),
      type:BottomNavigationBarType.fixed ,
      backgroundColor: primaryColor,
      selectedItemColor: Color(0xFF242424),
      ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
      bodySmall: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
      bodyMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
  bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
      displaySmall: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
    )

    );

}