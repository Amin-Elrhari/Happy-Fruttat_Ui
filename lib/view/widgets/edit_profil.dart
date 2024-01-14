import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/view/widgets/Profile_widget.dart';
import 'package:happyfrutflutter/view/widgets/cost_text.dart';

import '../../constance.dart';
import 'text_field.dart';
import '../auth/secend_screen.dart';
import 'menu.dart';

class Edit_Profile extends StatelessWidget {
  const Edit_Profile({Key? key}) : super(key: key);

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
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:23,bottom: 23,left: 23),
                child: CustomText(
                  text: 'Profile',
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,bottom: 18),
                child: TextFieldDecoration(
                  prefix:Icon(Icons.person_outline,color: Colors.red,) ,
                  obscure: false,
                  hint: 'Nom de compte',
                  color: Colors.grey.shade400,
                  focusColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,bottom: 18),
                child: TextFieldDecoration(
                  prefix:Icon(Icons.email_outlined,) ,
                  obscure: false,
                  hint: 'E-mail',
                  color: Colors.grey.shade400,
                  focusColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,bottom: 18),
                child: TextFieldDecoration(
                  prefix:Icon(Icons.email_outlined,) ,
                  obscure: false,
                  hint: 'CIN',
                  color: Colors.grey.shade400,
                  focusColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,bottom: 18),
                child: TextFieldDecoration(
                  prefix:Icon(Icons.call_rounded,color: Colors.red,) ,
                  obscure: false,
                  hint: 'Numéro de téléphone',
                  color: Colors.grey.shade400,
                  focusColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,bottom: 18),
                child: TextFieldDecoration(
                  prefix:Icon(Icons.calendar_month_outlined) ,
                  obscure: false,
                  hint: 'Annivairsaire',
                  color: Colors.grey.shade400,
                  focusColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,bottom: 18),
                child: TextFieldDecoration(
                  obscure: false,
                  hint: 'Sex',
                  color: Colors.grey.shade400,
                  focusColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,bottom: 18),
                child: TextFieldDecoration(
                  prefix:Icon(Icons.place_outlined) ,
                  obscure: false,
                  hint: 'Adresse',
                  color: Colors.grey.shade400,
                  focusColor: Colors.red,
                ),
              ),
              SizedBox(height: 30,),

              TextButton(

                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                child:CustomText(
                  text: "Next",
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
      ),
    );
  }
}



