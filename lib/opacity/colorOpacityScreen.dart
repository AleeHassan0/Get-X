import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/opacity/opacityController.dart';

class Coloropacityscreen extends StatefulWidget {
  const Coloropacityscreen({super.key});

  @override
  State<Coloropacityscreen> createState() => _ColoropacityscreenState();
}

class _ColoropacityscreenState extends State<Coloropacityscreen> {
  //opacity controller ko hum es class main inject kry gy...taky hum es ko use kr sky
  Opacitycontroller opacitycontroller = Get.put(Opacitycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Screen'),
      ),
      body: Column(
        children: [
          Obx(() => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(opacitycontroller.opacity.value),
              )),
          Obx(() => Slider(
              value: opacitycontroller.opacity.value,
              onChanged: (value) {
                opacitycontroller.setOpacity(value);
              }))
        ],
      ),
    );
  }
}
