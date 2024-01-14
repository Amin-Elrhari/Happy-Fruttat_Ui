import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/view/auth/secend_screen.dart';
import 'package:happyfrutflutter/view/promotion_screen.dart';
import 'package:happyfrutflutter/view/widgets/Profile_widget.dart';
import 'package:happyfrutflutter/view/widgets/nav_cost.dart';
import 'package:happyfrutflutter/view/widgets/parametre_widget.dart';

import '../../constance.dart';
import 'a_propos_de_nous.dart';
import 'cost_text.dart';
import 'orders.dart';
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body:Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Container(
    child:SingleChildScrollView(
    child:Column(
    children: [
    Container(
    height:97.sp ,
    width:double.infinity,
    decoration: BoxDecoration(
    color: primaryColor,
    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
    child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart),color: Colors.white,iconSize: 35,),
    const Image(image: AssetImage(
    "assets/images/img_9.png",
    ),height: 59,
    width: 105,
    ),
    IconButton(onPressed: (){}, icon: const Icon(Icons.notifications),color: Colors.white,iconSize: 35,)
    ],
    ),

    ),
      SizedBox(height: 30),
      Container(


        child: Row(

          children: [
            Padding(

              padding:  EdgeInsets.only(left: 20.sp),
              //child: CircleAvatar(foregroundImage: AssetImage('assets/image/img.png'),


                child: CircleAvatar(
                  radius: 62,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/avatar.png'),

                ),
              ),


            Padding(
              padding:  EdgeInsets.only(left: 11.sp,top: 0.sp,right: 10.sp),
              child: Column(
                children: [
                  Text(
                      'A BERAHHOU',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  CustomText(
                    text: 'a.berahhou@gmail.com',
                    fontSize: 15,
                    color: Colors.grey.shade500,
                  ),

                ],
              )
            ),

          ],
        ),


      ),
      SizedBox(height: 30),
      Container(
        alignment: Alignment.topLeft,
        height: 3,
        width: 300.sp,
        color: Colors.grey.shade500,
      ),
      SizedBox(height: 25,),
      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
        child: Container(
            child:Row(
              children: [
                Image.asset(
                  'assets/images/home.png',
                  height: 30,
                  width: 30,

                ),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: CustomText(
                    text: 'Accueil',
                    fontSize: 18,

                  ),
                )

              ],
            )
        ),
      ),
        onTap: (){
          Get.to(SecondScreen());
        }

    ),
      SizedBox(height: 25),
      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/promotion.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Promotion',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(PromotionScreen());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/historique.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Historiques des commandes',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(Orders());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/profil.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Profile',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(Profile());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/position.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Mes adresses ',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(SecondScreen());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/Portfeuille.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Portfeuille',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(SecondScreen());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/enregistre.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Commandes enregistrées',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(SecondScreen());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/parametre.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Paramètre',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(Parametre());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/contact.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'Contact support',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(SecondScreen());
          }

      ),
      SizedBox(height: 25,),

      InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  children: [
                    Image.asset(
                      'assets/images/a_propose.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: CustomText(
                        text: 'à propos de nous',
                        fontSize: 18,

                      ),
                    )

                  ],
                )
            ),
          ),
          onTap: (){
            Get.to(A_propos_de_nous());
          }

      ),
SizedBox(height: 35,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomText(
        text: 'App Version - V1.00',
        color: Colors.black,
        fontSize: 15,
      ),
    ),
    CustomText(
      text: 'Se Déconnecter',
      color: Colors.black,
      fontSize: 15,
    ),
  ],
)



    ])
        )
    ),
      )
    );
  }
}






