import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constance.dart';
import 'menu.dart';



class A_propos_de_nous extends StatelessWidget {
  const A_propos_de_nous({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Get.to(Menu()); }),
        actions: [
          Image.asset('assets/images/img_9.png')
        ],
      ),


      body:SingleChildScrollView(

        scrollDirection: Axis.vertical,


        child: Column(
          children: [
            Container(

              child: Image.asset('assets/images/img.png',),
            ),


            Text('HappyFruta',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),),

               30.verticalSpace,
            
            


               Text('happyFruta est une application mobile conçue\n'
                      ' pour aider les utilisateurs à gérer leur\n'
                      ' consommation de fruits et légumes. Elle peut\n'
                      ' inclure des fonctionnalités telles que la création \n'
                      'de listes de courses, la suivi de l"utilisation des\n'
                      ' produits, des conseils de stockage et de\n'
                      ' préparation des aliments',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,





                    ),

              ),

            40.verticalSpace,



            Text('Contactez-nous',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),),
            20.verticalSpace,

            Text('+33 441-1552-92',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),

            6.verticalSpace,

            Text('contact@happyfruta.fr',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            50.verticalSpace,
            
            
            Padding(
              padding: const EdgeInsets.only(left:140 ),
              child: Row(


                children: [

                  InkWell(

                    child: Image.asset('assets/images/img_17.png',
                    height: 55,width: 55,),
                  ),

                  20.horizontalSpace,


                  InkWell(

                    child: Image.asset('assets/images/img_20.png',
                      height: 55,width: 55,),
                  ),
                ],
              ),
           
            ),


              70.verticalSpace,
            
            Text('Copyrights by Med You In',

            style: TextStyle(
              color: primaryColor,
            ),),
            
            




          ],
        ),



      ),
    );
  }
}
