import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getXList/favouriteController.dart';

class Listscreen extends StatefulWidget {
  const Listscreen({super.key});

  @override
  State<Listscreen> createState() => _ListscreenState();
}

class _ListscreenState extends State<Listscreen> {
  Favouritecontroller favouritecontroller = Get.put(Favouritecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Screen"),
      ),
      body: ListView.builder(
          itemCount: favouritecontroller.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (favouritecontroller.favFruit.contains(
                      favouritecontroller.fruitList[index].toString())) {
                    favouritecontroller.removeFromFav(
                        favouritecontroller.fruitList[index].toString());
                  } else {
                    favouritecontroller.addToFav(
                        favouritecontroller.fruitList[index].toString());
                  }
                },
                title: Text(favouritecontroller.fruitList[index].toString()),
                trailing: Obx(() => Icon(
                      Icons.favorite,
                      color: favouritecontroller.favFruit.contains(
                              favouritecontroller.fruitList[index].toString())
                          ? Colors.red
                          : Colors.white,
                    )),
              ),
            );
          }),
    );
  }
}
