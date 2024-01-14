import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/view/auth/secend_screen.dart';
import 'package:happyfrutflutter/view/widgets/nav_cost.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constance.dart';
import 'cost_text.dart';
import 'home_custom.dart';
 class Cources_En_ligne extends StatelessWidget {
   const Cources_En_ligne({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       bottomNavigationBar: NavBar(),
      body:Container(

     padding:  EdgeInsets.only(top: 25.sp),


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
       SizedBox(height: 20.h),


       Padding(
         padding:  EdgeInsets.only(left: 30.sp),
         child: CustomText(text: 'Courses en ligne',
             fontSize: 25),
       ),
       SizedBox(height: 15)
       ,
       Stack(
         children:[
           Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
               color: Colors.black
             ),

             child: Opacity(
               opacity:0.7,


               child:  GestureDetector(

                 onTap: () {
                   // Navigate to a new screen or launch a URL
                   Get.to(SecondScreen());
                 },
                 child: Container(



                   child: Image.asset(

                     'assets/images/legume.png',
                     width: 329,
                     height: 154,
                   ),
                 ),
               ),
             ),

           ),
           Positioned(
               top: 20,
               left: 20,
               child: Text(
                 'Legumes',
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 28,
                     color: Colors.white
                 ),
               ))

         ]
       ),
       SizedBox(height: 30),
       Stack(
           children:[
             Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.black
               ),
               child: Opacity(
                 opacity:0.7,


                 child:  GestureDetector(

                   onTap: () {
                     // Navigate to a new screen or launch a URL
                     Get.to(SecondScreen());
                   },
                   child: Container(
                     child: Image.asset(

                       'assets/images/fruit.png',
                       width: 329,
                       height: 154,

                     ),
                   ),


                 ),
               ),

             ),
             Positioned(
                 top: 20,
                 left: 20,
                 child: Text(
               'Fruits',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 28,
                 color: Colors.white
               ),
             ))
           ]
         

       ),

      ]),
     )
     )
     );
   }
 }
 

