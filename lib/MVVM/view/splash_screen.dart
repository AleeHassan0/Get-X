import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text("Splah Screen"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.SnackBar('Error ', 'Some unknwon Error has been Accured');
      }),
    );
  }
}
