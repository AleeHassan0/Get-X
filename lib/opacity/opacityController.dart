import 'package:get/get.dart';

class Opacitycontroller extends GetxController {
  RxDouble opacity = 0.4.obs;
  setOpacity(double value) {
    opacity.value = value;
  }
}