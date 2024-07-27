import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Layout/Layout.dart';

class SplashScreen extends StatefulWidget {
  static const String routname='/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), (){
      Navigator.pushNamed(context, Layout.routname);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Image.asset('assets/image/splash.png',fit: BoxFit.cover,);

  }
}
