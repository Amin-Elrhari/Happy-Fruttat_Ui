
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happyfrutflutter/view/auth/loginscreen.dart';
import 'package:happyfrutflutter/view/auth/secend_screen.dart';
import 'package:happyfrutflutter/view/auth/singin.dart';
import '../../constance.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState(){
    super.initState();
    _navigateToHome();
  }
  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500),() {});
    Get.to(LoginScreen());

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:primaryColor,
      body: Center(
        child: Container(
          child: Image(
            image: AssetImage('assets/images/img_8.png'),
          ),
        ),
      ),
    );
  }
}
