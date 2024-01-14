import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/core/controller/parametre_controller.dart';
import 'package:happyfrutflutter/view/widgets/verifier_mdp.dart';
import 'package:happyfrutflutter/core/controller/auth_contoller.dart';
import '../../constance.dart';
import 'Profile_widget.dart';
import 'cost_text.dart';

class Parametre extends StatelessWidget {
   Parametre({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
          Get.to(Profile());
        }),
        actions: [
          Image.asset('assets/images/img_9.png')
        ],
      ),
      body: GetBuilder<ParametreController>(

        init: ParametreController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
                children: [
            Padding(
            padding: const EdgeInsets.only(left: 23,top: 23,bottom: 23),
            child: CustomText(
              text:'Parametres',
              fontSize: 23.sp,
              color: Colors.black,
            ),
          ),
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
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child:Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                  child:Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceAround

                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(left:2,top: 15),
                                        child: CustomText(
                                          text: 'Notification',
                                          fontSize: 18,

                                        ),
                                      ),
                                      68.horizontalSpace,
                                      Padding(
                                          padding: const EdgeInsets.only(left:80),
                                          child:Container(
                                            height: 25,
                                            width:45 ,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              border:Border.all(width: 2,color: primaryColor)
                                            ),
                                            child: Switch(
                                                value:  controller.changer, onChanged: (value) {
                                              controller.changer=value;
                                              controller.update();
                                              print(value);
                                            },
                                            activeColor: primaryColor,
                                              inactiveTrackColor: Colors.white,
                                              inactiveThumbColor: primaryColor,


                                            ),
                                          ),


                                      ),


                                    ],
                                  )
                              ),
                            ),


                          ),

                        ],
                      )

                  ),23.verticalSpace,
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
                                        padding: const EdgeInsets.only(left:2,top: 15),
                                        child: CustomText(
                                          text: 'Langue',
                                          fontSize: 18,

                                        ),
                                      ),
                                      120.horizontalSpace,
                                      Padding(
                                        padding: const EdgeInsets.only(left:80),
                                        child:Image.asset('assets/images/img_16.png',width: 34,height: 38,),


                                      ),


                                    ],
                                  )
                              ),
                            ),


                          ),

                        ],
                      )

                  ),
                  23.verticalSpace,

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
                                        padding: const EdgeInsets.only(left:2,top: 15),
                                        child: CustomText(
                                          text: 'Termes politiques',
                                          fontSize: 18,

                                        ),
                                      ),
                                      34.horizontalSpace,
                                      Padding(
                                          padding: const EdgeInsets.only(left:80),
                                          child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))


                                      ),


                                    ],
                                  )
                              ),
                            ),


                          ),

                        ],
                      )

                  ),
                  23.verticalSpace,

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
                                        padding: const EdgeInsets.only(left:2,top: 15),
                                        child: CustomText(
                                          text: 'Termes et condition d’utilisation',
                                          fontSize: 18,

                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right:0),
                                        child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))

                                      ),


                                    ],
                                  )
                              ),
                            ),


                          ),

                        ],
                      )

                  ),
                  23.verticalSpace,
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
                                        padding: const EdgeInsets.only(left:2,top: 15),
                                        child: CustomText(
                                          text: 'à propos de nous',
                                          fontSize: 18,

                                        ),
                                      ),
                                    39  .horizontalSpace,
                                      Padding(
                                        padding: const EdgeInsets.only(left:80),
                                        child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                      ),


                                    ],
                                  )
                              ),
                            ),


                          ),

                        ],
                      )

                  ),
                  23.verticalSpace,
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
                                        padding: const EdgeInsets.only(left:2,top: 15),
                                        child: CustomText(
                                          text: 'Évaluer nous',
                                          fontSize: 18,

                                        ),
                                      ),
                                      72  .horizontalSpace,

                                      Padding(
                                        padding: const EdgeInsets.only(left:80),
                                        child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))


                                      ),


                                    ],
                                  )
                              ),
                            ),


                          ),

                        ],
                      )

                  ),
                  23.verticalSpace,

                  Container(
                      width: 335,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.red,

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
                                        padding: const EdgeInsets.only(left:2,top: 15),
                                        child: CustomText(
                                          text: 'Supprimer le compte',
                                          color: Colors.red,
                                          fontSize: 18,

                                        ),
                                      ),
                                      10.horizontalSpace,
                                      Padding(
                                          padding: const EdgeInsets.only(left:80),
                                          child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.red,))


                                      ),


                                    ],
                                  )
                              ),
                            ),


                          ),

                        ],
                      )

                  ),
  ])
    );
        }
      )
    );
  }
}






