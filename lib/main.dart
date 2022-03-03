import 'package:flutter/material.dart';
import 'package:parler_app/page.dart';
import 'package:parler_app/splash.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageScreen(),
    );
  }
}
