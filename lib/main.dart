import 'package:flutter/material.dart';
import 'package:visa_card_ui/utils/colors.dart';
import 'package:visa_card_ui/pages/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.bgColor,
      ),
      home: Home(),
    );
  }
}
