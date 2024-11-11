import 'package:flutter/material.dart';
import 'package:getx/MVVM/res/components/internet_exception_widget.dart';
import 'package:getx/MVVM/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const InternetExceptionWidget(),
      appBar: AppBar(
        title: const Text("Splash Screen"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.SnackBar('Error ', 'Some unknwon Error has been Accured');
      }),
    );
  }
}
