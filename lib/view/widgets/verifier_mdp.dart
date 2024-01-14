import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/view/widgets/cost_text.dart';

import '../../constance.dart';
import '../auth/secend_screen.dart';
import 'Profile_widget.dart';
import 'text_field.dart';
class Mot_de_passe extends StatelessWidget {
  const Mot_de_passe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Get.to(Profile()); }),
        actions: [
          Image.asset('assets/images/img_9.png')
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23,top: 23,bottom: 23),
              child: CustomText(
                text:'Mot de passe',
                fontSize: 23,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:23,right: 23,bottom: 23),
              child: TextFieldDecoration(
                obscure: true,
                hint: 'Ancienne mot de passe',
                color: Colors.grey.shade400,
                focusColor: primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:23,right: 23,bottom: 23),
              child: TextFieldDecoration(
                obscure: true,
                hint: 'Nouveau mot de passe',
                color: Colors.grey.shade400,
                focusColor: primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:23,right: 23,bottom: 23),
              child: TextFieldDecoration(
                obscure: true,
                hint: 'Confirmer le Nouveau mot de passe',
                color: Colors.grey.shade400,
                focusColor: primaryColor,
              ),
            ),
SizedBox(height: 30,),
            TextButton(

              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
              },
              child:CustomText(
                text: "Modifier",
                color: Colors.white,
                fontSize: 15,
                alignment: Alignment.center,
              ),
              style: TextButton.styleFrom(
                maximumSize: Size(302, 60),
                backgroundColor: primaryColor,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),



              ),


            )
          ],
        ),
      ),
    );
  }
}




