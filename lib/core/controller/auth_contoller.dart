
import 'package:get/get.dart';

class AuthViewModel extends GetxController{
  int counter= 0;
    @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady

  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  void increment(){
      counter++;
      update();
  }
}


