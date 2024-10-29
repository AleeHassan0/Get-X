import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/homescreen.dart';

class Lightanddark extends StatefulWidget {
  const Lightanddark({super.key});

  @override
  State<Lightanddark> createState() => _LightanddarkState();
}

class _LightanddarkState extends State<Lightanddark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("Dialog Alert"),
              subtitle: const Text('Dialog Alert with getX'),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Chat",
                    middleText: "Do you want to Delete all chat?",
                    textConfirm: 'yes',
                    textCancel: 'No');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Get X bottom sheet"),
              subtitle: const Text('Light and dark theme'),
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.black38,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text(
                          "Light theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text(
                          "Dark theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
              onTap: () {
                Get.to(const Homescreen());
              },
              child: const Text("GO to Next Scren with GetX"))
        ],
      ),
    );
  }
}
