import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:happyfrutflutter/view/widgets/cost_grid.dart';
import 'package:happyfrutflutter/view/widgets/cost_text.dart';
import 'package:happyfrutflutter/view/widgets/home_custom.dart';
import 'package:happyfrutflutter/view/widgets/nav_cost.dart';
import 'package:happyfrutflutter/view/widgets/promotion_fruit.dart';
import 'package:happyfrutflutter/view/widgets/promotion_legume.dart';

import '../constance.dart';
import '../core/controller/panier_controller.dart';
import '../model/produit_p.dart';
import 'auth/secend_screen.dart';



class PromotionScreen extends StatelessWidget {
  PromotionScreen({Key? key,}) : super(key: key);


  final List<String>names=<String>[
    'Légumes','Fruits'
  ];

  late   bool hfh=true;
  late   List<MGrocery>  item=_item;


  final List<MGrocery> _item=[
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),

    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 )
  ];
  final List<MGrocery> _item2=[
    MGrocery(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),

    MGrocery(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Tomate', url: 'assets/images/Avocat.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 )
  ];

  late String text='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        bottomNavigationBar:NavBar(),

      body:GetBuilder<PanierController>(
        init: PanierController(),
    builder: (controller) {
      return SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                Container(

                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15))),
                  width: double.infinity,
                  child: HeaderCustom(),
                ),
                SizedBox(height: 20.h),


                Padding(
                  padding: EdgeInsets.only(left: 30.sp),
                  child: CustomText(text: 'Promotions',
                      fontSize: 20),
                ),

                SizedBox(height: 20,),


                Row(

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Container(
                      width: 110,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(

                        children: [
                          GestureDetector(

                            onTap: () {
                              hfh = true;

                              item = _item;
                              // Navigate to a new screen or launch a URL

                            },

                            child: Container(

                              child: Image.asset(

                                'assets/images/Fruits.png',
                                width: 89,
                                height: 120,

                              ),
                            ),


                          ),


                          Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: Text('Fruit'),
                          ),


                        ],
                      ),
                    ),


                    SizedBox(width: 40,),
                    Container(
                      width: 110,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: primaryColor),

                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(

                        children: [
                          GestureDetector(

                            onTap: () {
                              hfh = false;

                              item = _item2;

                              // Navigate to a new screen or launch a URL

                            },
                            child: Container(

                              child: Image.asset(

                                'assets/images/Légumes.png',
                                width: 89,
                                height: 120,

                              ),
                            ),


                          ),


                          Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: Text('Legumes'),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),


                GridCostume(item: item, gsvh: hfh),


              ],
            )
          //child: GridCostume(item: _item,),


        )

      );



    },

      )
    );

  }
}







