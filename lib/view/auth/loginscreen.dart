import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/core/controller/loginController.dart';

import 'package:happyfrutflutter/view/auth/secend_screen.dart';
import 'package:happyfrutflutter/view/widgets/cost_text.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../constance.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body:GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            child: Column(

              children: [
                Center(
                  child: Container(

                      child: Column(
                        children: [
                          Column(
                            children:  [
                              SizedBox(height: 50),
                              const Image(
                                image: AssetImage("assets/images/img.png"),
                                height: 172,
                                width: 306,
                              ),

                              CustomText(
                                text: "HappyFruta",
                                fontSize: 30,
                                color: Colors.black,
                                alignment: Alignment.center,
                              ),
                              SizedBox(height: 20)



                            ],
                          ),




                        ],

                      ),

                    ),

                ),

                CustomText(text: "Veuillez saisir les informations de"
                  ,fontSize: 17,
                  color: Colors.black,
                  alignment: Alignment.center,
                ),
                CustomText(
                  text: "  votre compte pour vous connecter",
                  fontSize: 17,
                color: Colors.black,
                  alignment: Alignment.center,
                ),


                SizedBox(height: 30),
                Column(
                  children: [
                    TextFormField(
                      onSaved: (value){},
                      validator: (value){},


                      decoration: InputDecoration(
                        prefixIcon:  Icon(
                          Icons.email_outlined,
                          color: Colors.grey.shade400,

                        ),
                        hintText: "E-mail adresse",
                        hintStyle: TextStyle(
                          color: Colors.grey,


                        ),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 2
                          ),
                          borderRadius: BorderRadius.circular(15),

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColor,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(15)

                      ),


                    )
                    )
                  ],
                ),
                SizedBox(height: 25),

                Column(
                  children: [
                    TextFormField(

                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                            Icons.lock_outline,
                          color: Colors.grey.shade400,

                        ),
                          hintText: "Mot de passe",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.white,

                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(15),

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColor,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(15)



                        ),


                      ),

                    )
                  ],
                ),
            SizedBox(height: 15)
            ,
                GestureDetector(

                  onTap: () {
                    // Navigate to a new screen or launch a URL
                    launchUrlString('https://www.example.com');
                  },
                  child: CustomText(
                  text: "Mot de passe oublié ?",
                    fontSize: 17.sp,
                    color: primaryColor,
                    alignment: Alignment.topRight,
                  ),
                ),
                30.verticalSpace,
                TextButton(

                  onPressed: (){
                    //Get.to(SecondScreen());
                    //print(controller.counter);
                    controller.navigate();
                    controller.update();
                  },
                    child:CustomText(
                      text: 'Se Connecter',
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


                ), SizedBox(height: 50,),


              ],
            ),
          );
        }
      ),
    );
  }
}

