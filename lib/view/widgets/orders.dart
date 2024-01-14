import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constance.dart';
import 'cost_text.dart';
import 'menu.dart';


class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

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

      body:Column(children: [



        Container(
          decoration: BoxDecoration(
              color:primaryColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
          width: double.infinity,

          child: Padding(
            padding: const EdgeInsets.only(top:13,left: 30.0,right: 30.0,bottom: 10),
            child: Container(
              width: 70,
              decoration: BoxDecoration(
                  color:Color(0xFFFFC47E),
                  borderRadius: BorderRadius.all(Radius.circular(30)),

              ),

              child: TextFormField(



                decoration: InputDecoration(

                  hintText: "Recherche...",


                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.black12,),

                ),

              ),
            ),
          ),
        ),

           SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 95,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor,width: 1),
                      color: primaryColor,
                    ),

                    child: TextButton(
                      child: Text(
                        'Tous ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),

                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                      ),




                    ),
                  ),
                  Container(
                    width: 95,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor,width: 1),
                    ),

                    child: TextButton(
                      child: Text(
                        'Completé ',
                        style: TextStyle(
                          fontSize: 14,
                          color:primaryColor,
                        ),

                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                      ),




                    ),
                  ),
                  Container(
                    width: 95,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor,width: 1),

                    ),

                    child: TextButton(
                      child: Text(
                        'Annulé ',
                        style: TextStyle(
                          fontSize: 14,
                          color: primaryColor,
                        ),

                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                      ),




                    ),
                  ),

                ],
              ),
            ),





          ),

        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 15),
          child: Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2,color:Color(0xFF019B79)),

            ),


            child: Column(
              children: [
                Row(

                  children: [
                    Padding(

                      padding:  EdgeInsets.all( 20.sp),
                      //child: CircleAvatar(foregroundImage: AssetImage('assets/image/img.png'),


                      child: CircleAvatar(

                        radius: 32,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/avatar.png'),

                      ),
                    ),


                    Padding(
                        padding:  EdgeInsets.only(left: 3.w,top: 0,right: 10.w,bottom: 10.h),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              'A BERAHHOU',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            15.verticalSpace,
                            CustomText(
                              text: 'a.berahhou@gmail.com',
                              fontSize: 15,
                              color: Colors.grey.shade500,
                            ),

                          ],
                        )
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 50,bottom: 69),
                      child: Icon(Icons.verified_outlined,color: Colors.green,),
                    )

                  
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("58.00 EURO"),
                      1.horizontalSpace,


                      Icon(Icons.credit_card,color: Colors.green,),


                    ],
                  ),
                ),
              ],
            ),


          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 15),
          child: Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2,color:Color(0xFFA54B3E)),

            ),


            child: Column(
              children: [
                Row(

                  children: [
                    Padding(

                      padding:  EdgeInsets.all( 20.sp),
                      //child: CircleAvatar(foregroundImage: AssetImage('assets/image/img.png'),


                      child: CircleAvatar(

                        radius: 32,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/avatar.png'),

                      ),
                    ),


                    Padding(
                        padding:  EdgeInsets.only(left: 3.w,top: 0,right: 10.w,bottom: 10.h),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              'A BERAHHOU',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            15.verticalSpace,
                            CustomText(
                              text: 'a.berahhou@gmail.com',
                              fontSize: 15,
                              color: Colors.grey.shade500,
                            ),

                          ],
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 50,bottom: 69),
                      child: Icon(Icons.cancel_outlined,color: Colors.red,),
                    )


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("58.00 EURO"),
                      1.horizontalSpace,




                    ],
                  ),
                ),
              ],
            ),


          ),
        ),



      ],),




    );
  }
}
