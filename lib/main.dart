import 'package:flutter/material.dart';
import 'package:screen_example_2/screens/introduction_first_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroductionFirstScreenWidget(),
    );
  }
}