import 'package:get/get.dart';



class HomeViewModel extends GetxController{
  int _navigatorValue=0;

  get navigatorValue => _navigatorValue;

  void changeSelecteValue(int selectedValue){
    _navigatorValue = selectedValue;
    update();
  }
}