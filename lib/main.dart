import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techmedic/onboarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const Map<int, Color> _colorMap = {
    50: Color.fromRGBO(5, 81, 100, .1),
    100: Color.fromRGBO(5, 81, 100, .2),
    200: Color.fromRGBO(5, 81, 100, .3),
    300: Color.fromRGBO(5, 81, 100, .4),
    400: Color.fromRGBO(5, 81, 100, .5),
    500: Color.fromRGBO(5, 81, 100, .6),
    600: Color.fromRGBO(5, 81, 100, .7),
    700: Color.fromRGBO(5, 81, 100, .8),
    800: Color.fromRGBO(5, 81, 100, .9),
    900: Color.fromRGBO(5, 81, 100, 1),
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff3C5698, _colorMap),
      ),
      home: const Onboarding(),
    );
  }
}
