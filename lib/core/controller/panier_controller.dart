import 'package:get/get.dart';

class PanierController extends GetxController{
  int counter=0;
  void increasse(){
    counter++;
    update();
  }
  void decreasse(){
    counter--;
    if (counter<0){
      counter=0;
    }
    update();
  }
}



