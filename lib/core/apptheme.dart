import 'package:flutter/material.dart';

class Apptheme{
static ThemeData lightMode =ThemeData(
  appBarTheme: AppBarTheme(

    titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
    backgroundColor: Colors.transparent
  ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      unselectedItemColor: Color(0xFFF8F8F8),
      type:BottomNavigationBarType.fixed ,
      backgroundColor: Color(0xFFB7935F),
      selectedItemColor: Color(0xFF242424),
      ),
    textTheme:  TextTheme(
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
      bodySmall: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
      bodyMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
  bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
      displaySmall: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'elMussiri'),
    )

    );
static ThemeData DarkeMode =ThemeData(

  dividerTheme: DividerThemeData(color: Color(0xFFFACC1D)),
    appBarTheme: AppBarTheme(

        iconTheme: IconThemeData(
            color: Color(0xFFF8F8F8),
        ),
        titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color(0xFFF8F8F8),fontFamily: 'elMussiri'),
        backgroundColor: Colors.transparent
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      unselectedItemColor: Color(0xFFF8F8F8),
      type:BottomNavigationBarType.fixed ,
      backgroundColor: Color(0xFF141A2E),
      selectedItemColor: Color(0xFFFACC1D),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFFF8F8F8), fontFamily:'elMussiri'),
      bodySmall: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFFACC1D),fontFamily: 'elMussiri'),
      bodyMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFFF8F8F8),fontFamily: 'elMussiri'),
      bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFFF8F8F8),fontFamily: 'elMussiri'),
      displaySmall: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFFF8F8F8),fontFamily: 'elMussiri'),
    )

);

}