import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/SplashLogo.png', scale: 5.0,),
              Image.asset('assets/images/SplashTitle.png', scale: 5.0,),
              Image.asset('assets/images/SplashSubTitle.png', scale: 5.0,),
            ],
          ),
        ),
      ), 
    );
  }
}