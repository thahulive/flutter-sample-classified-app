import 'package:flutter/material.dart';
import 'package:classifieds_app/generate_otp.dart';
import 'package:classifieds_app/verify_otp.dart';
import 'package:classifieds_app/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final routes = <String, WidgetBuilder> {
    GenerateOtp.tag: (context) => GenerateOtp(),
    VerifyOtp.tag: (context) => VerifyOtp(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classifieds',
      home: GenerateOtp(),
      routes: routes,
    );
  }
}