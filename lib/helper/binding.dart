import 'package:get/get.dart';

import '../view/auth/loginscreen.dart';


class  Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreen());
    Get.lazyPut(() => LoginScreen());

  }
  
  
}