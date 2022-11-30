import 'package:flutter/material.dart';
import 'package:screen_example_2/screens/onboarding/onboarding_screen_widget.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 5))
    //     .then((value) => {FlutterNativeSplash.remove()});
    initialize();
  }

  void initialize() async {
    await Future.delayed(const Duration(seconds: 5));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreenWidget();
  }
}
