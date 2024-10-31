import 'package:get/get.dart';

class Switchcontroller extends GetxController {
  RxBool notification = false.obs;
  setNotifications(bool value) {
    notification.value = value;
  }
}
