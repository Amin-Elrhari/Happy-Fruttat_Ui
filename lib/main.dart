import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:happyfrutflutter/view/auth/loginscreen.dart';
import 'package:happyfrutflutter/view/auth/secend_screen.dart';
import 'package:happyfrutflutter/view/promotion_screen.dart';
import 'package:happyfrutflutter/view/splashscreen/splashscreen.dart';
import 'package:happyfrutflutter/view/widgets/a_propos_de_nous.dart';
import 'package:happyfrutflutter/view/widgets/edit_profil.dart';
import 'package:happyfrutflutter/view/widgets/menu.dart';
import 'package:happyfrutflutter/view/widgets/orders.dart';
import 'package:happyfrutflutter/view/widgets/panier.dart';
import 'package:happyfrutflutter/view/widgets/parametre_widget.dart';
import 'package:happyfrutflutter/view/widgets/promotion_fruit.dart';
import 'package:happyfrutflutter/view/widgets/promotion_legume.dart';
import 'package:happyfrutflutter/view/widgets/verifier_mdp.dart';
import 'dart:ui';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context,  child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Happy frutat',
          home:LoginScreen(),
        );
      },

    );


  }
}







