import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:happyfrutflutter/core/controller/home_viewmodel.dart';
import 'package:happyfrutflutter/view/auth/secend_screen.dart';
import 'package:happyfrutflutter/view/promotion_screen.dart';
import 'package:happyfrutflutter/view/widgets/courcesenligne.dart';

import '../../constance.dart';
import 'menu.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller)=>BottomNavigationBar(




        items:[

          BottomNavigationBarItem(
            backgroundColor: primaryColor,
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                  "Accueil",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            label: '', icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/img_10.png',
              fit:BoxFit.contain,width: 30,
          color: Colors.white,),
            ),),
          BottomNavigationBarItem(
            backgroundColor: primaryColor,

            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                  "Promotions"
              , style: TextStyle(
                  color: Colors.white
              ),
              ),
            ),
            label: "", icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/img_11.png',
                fit:BoxFit.contain,width: 30,
                color: Colors.white),
            ),),
          BottomNavigationBarItem(
            backgroundColor: primaryColor,

            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                  "Course en ligne",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            label: "", icon:Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/img_12.png',
                fit:BoxFit.contain,width: 30,
                color: Colors.white),
            ),),
          BottomNavigationBarItem(
            backgroundColor: primaryColor,

            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                  "Menu",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            label: "", icon:Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/images/img_13.png',
                fit:BoxFit.contain,width: 30,
                color: Colors.white),
            ),),


        ],
        currentIndex: controller.navigatorValue,
        onTap: (index){

          controller.changeSelecteValue(index);
          controller.update();
         switch(index){

           case 0:{
             Get.to(SecondScreen());
           }
           break;
           case 1:{
          Get.to(PromotionScreen());
          }
          break;
           case 2:{
             Get.to(Cources_En_ligne());
           }
           break;
           case 3:{
             Get.to(Menu());
           }
           break;


         }

        },
        elevation: 0,




      ),
    );
  }
}








