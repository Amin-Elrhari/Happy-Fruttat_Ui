import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/constance.dart';
import 'package:happyfrutflutter/view/widgets/verifier_mdp.dart';

import 'cost_text.dart';
import 'edit_profil.dart';
import 'menu.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

            children: [
              Padding(

                padding:  EdgeInsets.only(left: 20.sp,top: 10),
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
                      Text(
                        'a.berahhou@gmail.com',
                        style: TextStyle(
                            fontSize: 15,

                            color: Colors.grey.shade500
                        ),
                      ),

                    ],
                  )
              ),
              SizedBox(height: 30,),
              Container(
                height: 3,
                width: 440.sp,
                color: Colors.grey.shade300,
              ),
              SizedBox(height: 25,),

              Container(
                width: 335,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey.shade400,

                  )
                ),
                child: Row(
    children: [
        InkWell(
          child:Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                child:Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround

                  children: [
                    Image.asset(
                      'assets/images/profil.png',
                      height: 30,
                      width: 30,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10,top: 15),
                      child: CustomText(
                        text: 'Profile',
                        fontSize: 18,

                      ),
                    ),
                Padding(
                  padding: const EdgeInsets.only(left:170),
                  child:
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                )
                  ],
                )
            ),
          ),

          onTap: (){
            Get.to(Edit_Profile());
        },
        ),

    ],
    )

              ),
              SizedBox(height:15 ,),
              Container(
                  width: 335,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade400,

                      )
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              child:Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround

                                children: [
                                  Image.asset(
                                    'assets/images/lock.png',
                                    height: 30,
                                    width: 30,

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:10,top: 15),
                                    child: CustomText(
                                      text: 'Change password',
                                      fontSize: 18,

                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left:80),
                                      child:
                                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                  )
                                ],
                              )
                          ),
                        ),

                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Mot_de_passe()));
                        },
                      ),

                    ],
                  )

              ),
              SizedBox(height:15 ,),
              Container(
                  width: 335,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade400,

                      )
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              child:Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround

                                children: [
                                  Image.asset(
                                    'assets/images/image.png',
                                    height: 30,
                                    width: 30,

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:10,top: 15),
                                    child: CustomText(
                                      text: 'Change profile picture',
                                      fontSize: 18,

                                    ),
                                  ),
                                 Padding(padding: EdgeInsets.only(left: 43),
                                     child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                 )


                                ],
                              )
                          ),
                        ),

                        onTap: (){
                          Get.to(Menu());
                        },
                      ),

                    ],
                  )

              ),SizedBox(height:15 ,),
              Container(
                  width: 335,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade400,

                      )
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              child:Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround

                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left:10,top: 15),
                                    child: CustomText(
                                      text: 'Terms and conditions',
                                      fontSize: 18,

                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left:75),
                                      child:
                                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                  )
                                ],
                              )
                          ),
                        ),

                        onTap: (){
                          Get.to(Menu());
                        },
                      ),

                    ],
                  )

              ),
              SizedBox(height:15 ,),
              Container(
                  width: 335,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade400,

                      )
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              child:Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround

                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left:10,top: 15),
                                    child: CustomText(
                                      text: 'À propos de nous',
                                      fontSize: 18,

                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left:108),
                                      child:
                                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                  )
                                ],
                              )
                          ),
                        ),

                        onTap: (){
                          Get.to(Menu());
                        },
                      ),

                    ],
                  )

              ), SizedBox(height:15 ,),
              Container(
                  width: 335,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade400,

                      )
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              child:Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left:10,top: 15),
                                    child: CustomText(
                                      text: 'Feedback',
                                      fontSize: 18,

                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left:170),
                                      child:
                                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                  )
                                ],
                              )
                          ),
                        ),

                        onTap: (){
                          Get.to(Menu());
                        },
                      ),

                    ],
                  )

              ),
              SizedBox(height: 50.sp,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text:'Copyrights by HappyFruta' ,
                  fontSize: 13,
                  color: primaryColor,
                  alignment: Alignment.center,
                ),
              )
            ],
          ),
      ),

    );
  }
}







