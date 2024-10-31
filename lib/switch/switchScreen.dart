import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/switch/switchController.dart';

class Switchscreen extends StatefulWidget {
  const Switchscreen({super.key});

  @override
  State<Switchscreen> createState() => _SwitchscreenState();
}

class _SwitchscreenState extends State<Switchscreen> {
  Switchcontroller switchcontroller = Get.put(Switchcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Screen"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notifications'),
              Obx(() => Switch(
                  value: switchcontroller.notification.value,
                  onChanged: (value) {
                    switchcontroller.setNotifications(value);
                  }))
            ],
          )
        ],
      ),
    );
  }
}
