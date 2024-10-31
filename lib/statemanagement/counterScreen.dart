import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/statemanagement/counterController.dart';

class Counterscreen extends StatefulWidget {
  const Counterscreen({super.key});

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  final Countercontroller countercontroller = Get.put(Countercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX StateManagement'),
      ),
      body: Center(child: Obx(() {
        return Text(
          countercontroller.counter.toString(),
          style: const TextStyle(fontSize: 60),
        );
      })),
      floatingActionButton: FloatingActionButton(onPressed: () {
        countercontroller.incrementController();
      }),
    );
  }
}
