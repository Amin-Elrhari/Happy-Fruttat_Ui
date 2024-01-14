

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:happyfrutflutter/constance.dart';
import 'package:happyfrutflutter/core/controller/home_viewmodel.dart';
import 'package:happyfrutflutter/view/widgets/cost_text.dart';
import 'package:happyfrutflutter/view/widgets/home_custom.dart';
import 'package:happyfrutflutter/view/widgets/top_vendu_widget.dart';

import '../../core/controller/auth_contoller.dart';
import '../widgets/nav_cost.dart';
import '../widgets/promotion_widget_decoration.dart';

class SecondScreen extends StatelessWidget {

  final List<String>names=<String>[
    'Légumes','Fruits'
  ];

  AuthViewModel controller=Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(



        bottomNavigationBar:NavBar(),

          body:Container(

            padding:  EdgeInsets.only(top: 25.sp),


              child:SingleChildScrollView(
              child:Column(
                children: [
                  Container(

                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
                    width: double.infinity,
                    child: HeaderCustom(),
                  ),

                  SizedBox(height: 20.h),

                  Container(
                    height: 151,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: primaryColor,
                    ),

                    child: Row(

                      children: [
                        Padding(

                          padding:  EdgeInsets.only(left: 20.sp),
                          //child: CircleAvatar(foregroundImage: AssetImage('assets/image/img.png'),
                           child: Container(
                             width: 80,
                             height: 80,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(50),
                               color: Colors.yellow,

                             ),

                             child: Image(
                               image: AssetImage('assets/images/img.png'),
                               height: 50,
                               width: 50,
                             ),
                           ),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(left: 11.sp,top: 50.sp,right: 10.sp),
                          child: CustomText(text: 'Bonjour A BERAHHOU \n\nVous avez 3\$ dans votre wallet'),
                        ),

                      ],
                    ),


                  ),

                  SizedBox(height: 20.h),


                  Padding(
                    padding:  EdgeInsets.only(left: 30.sp),
                    child: CustomText(text: 'Courses en ligne',
                    fontSize: 20),
                  ),

                  SizedBox(height: 20.h),

                  Container(

                    height: 150,
                    decoration: BoxDecoration(

                    ),


                    child: ListView.builder(
                      itemCount: names.length,
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  width: 100,

                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.yellow
                                  ),

                                child:Image(image:AssetImage('assets/images/${names[index]}.png')),

                                ),
                              ),
                              SizedBox(height: 10.h),

                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: CustomText(text:names[index],),
                              ),




                            ],
                          );



                        },

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 30.sp),
                        child: CustomText(
                          text:'Promotion',
                          fontSize: 20,

                        ),

                      ),

                      Padding(
                        padding:  EdgeInsets.only(right: 20.sp),
                        child: Container(
                          width: 95,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: primaryColor,width: 2),
                          ),

                          child: TextButton(
                            child: Text(
                              'Voir tout ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),

                            ),
                            onPressed: () {},
                            style: TextButton.styleFrom(
                            ),




                          ),
                        ),

                      ),



                    ],

                  ),
                  SizedBox(height: 12.h),
                  Promotions(),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 30.sp),
                        child: CustomText(
                          text:'Top Vendu',
                          fontSize: 20,

                        ),

                      ),

                      Padding(
                        padding:  EdgeInsets.only(right: 20.sp),
                        child: Container(
                          width: 95,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: primaryColor,width: 2),
                          ),

                          child: TextButton(
                            child: Text(
                              'Voir tout ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),

                            ),
                            onPressed: () {},
                            style: TextButton.styleFrom(
                            ),




                          ),
                        ),

                      ),



                    ],

                  ),
                  SizedBox(height: 12.h),

                  TopVendu(),

                ],



              ),)

          ),

     );







  }
}






/*
 *
* Container(
            child: NavBar(),
          )
* Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [

             GetBuilder<AuthViewModel>(
              init: AuthViewModel(),
              builder: (value)=>Text("${value.counter}")
            ),


           GetBuilder<AuthViewModel>(builder: (value)=>TextButton(
              onPressed: (){
                value.increment();
              },
              child:Text("increment") )
          )
        ],
      ),
      * ******************************************************************************
   Scaffold(
      body:Container(
        /*height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor,

        )*/
        child: Column(

          children: [



            /*Padding(
              padding: const EdgeInsets.fromLTRB(10,100,10,10),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFFFFC47E),

                ),


                  child: TextFormField(



                    decoration: InputDecoration(
                      hintText: 'Recherche',


                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.black12,),

                    ),

                  ),
                ),
              ),




          */Container(
              color: primaryColor,

              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),SizedBox(width: 100),
                      IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),SizedBox(width: 100),
                      IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag))

                    ],
                  ),
                ),
              ) ,
            ),

            Container(
                color: Colors.deepPurple,



                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(
                   ,
                    color:Color(0xFFFFC47E),




                    ),
                         child: TextFormField(



                decoration: InputDecoration(
                hintText: 'Recherche',


                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.black12,),

                ),

            ),


                        )
                      ],
                    ),
                  ),
                )
            )






          ],

        ),

      )

    );
*
***************************************************************

class Promotions extends StatelessWidget {

  final List<MGrocery> _items=[
    MGrocery(
      name:'maticha',
      url: 'assets/images/img.png',
      price:5 ,
    ),
    MGrocery(
      name:'maticha',
      url: 'assets/images/img_11.png',
      price:5 ,
    ),
    MGrocery(
      name:'maticha',
      url: 'assets/images/img_1.png',
      price:5,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(



      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemBuilder:(_,i)=>Container(
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor,width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
        ) ,
      ),


    );
  }
}

class MGrocery {
  late String name;
  late String url;
  late double price;

  MGrocery({required this.name, required this.url, required this.price});


}


 */






