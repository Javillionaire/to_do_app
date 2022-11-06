import 'package:flutter/material.dart';
import 'package:to_do_app/home_page/home_page.dart';
import 'package:to_do_app/splash_page/splash_page.dart';
import 'package:to_do_app/welcom_page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash': (context) => const SplashPage(),
        '/welcome': (context) => const WelcomPage(),
        '/home': (context) => const HomePage()
      },
      initialRoute: '/splash',
      debugShowCheckedModeBanner: false,
    );
  }
}
