import 'package:flutter/material.dart';
import 'package:flutter_pelatihan/pages/splash_page.dart';
import 'package:flutter_pelatihan/pages/started_page.dart';
import 'package:flutter_pelatihan/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/': (context) => GetStartedPage(),
        '/onboarding': (context) => Onboarding(),
      },
    );
  }
}
