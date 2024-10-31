import 'package:get/get.dart';

class Countercontroller extends GetxController {
  //GetX ki apni data types hn...
  //es ly hr data type sy phly Rx(getXReturn) use kiya jata h
  //obs mean obserable
  RxInt counter = 1.obs;
  incrementController() {
    counter.value++;
  }
}
