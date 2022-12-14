import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/app_asset.dart';
import '../utils/app_color.dart';
import 'auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startSplashScreen()async{
    var duration = Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(child: Image.asset(AppAsset.logo2, width: 254,)),
          Spacer(),
          Image.asset(AppAsset.background)
        ],
      ),
    );
  }
}
