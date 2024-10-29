import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx/languages/languages.dart';
import 'package:getx/languages/languages_screen.dart';
import 'package:getx/lightAndDark.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // locale: const Locale('en-US'),
      translations: Languages(),
      fallbackLocale: const Locale('en-US'),
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LanguagesScreen(),
    );
  }
}
