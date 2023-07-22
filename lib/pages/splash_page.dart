import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pelatihan/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<SplashPage> {
  @override
  void iniState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Onboarding()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7FFFD4),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Image.asset(
            'assets/image/logo.png',
            height: 200,
            width: 200,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'Universitas Muhammadiyah Bangka Belitung',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Montserrat/MontserratExtraBold',
          ),
          textAlign: TextAlign.center,
        ),
      ])),
    );
  }
}
