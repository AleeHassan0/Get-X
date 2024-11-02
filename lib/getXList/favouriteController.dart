import 'package:get/get.dart';

class Favouritecontroller extends GetxController {
  RxList<String> fruitList =
      ['Orange', 'Banana', 'Apple', 'PineApple', 'Mangoes'].obs;
  RxList favFruit = [].obs;

  addToFav(String value) {
    favFruit.add(value);
  }

  removeFromFav(String value) {
    favFruit.remove(value);
  }
}
