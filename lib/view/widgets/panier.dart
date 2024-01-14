import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:happyfrutflutter/core/controller/panier_controller.dart';
import '../../constance.dart';
import '../../model/produit_top.dart';
import 'cost_text.dart';
import 'menu.dart';
class Panier extends StatelessWidget {
   Panier({Key? key}) : super(key: key);
  final List<TopVenduProduit> _items=[
    TopVenduProduit(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc' ,price:5),
    TopVenduProduit(name: 'Avocat', url: 'assets/images/Avocat.png',pay:'Senigal' ,price:9 ),
    TopVenduProduit(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc',price:5 )
  ];
  @override
  Widget build(BuildContext context) {
    int te=0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Get.to(Menu()); }),
        actions: [
          Image.asset('assets/images/img_9.png')
        ],
      ),
      body:GetBuilder<PanierController>(
        init: PanierController(),
        builder: (controller) {
    return Padding(
      padding: const EdgeInsets.only(left:18,top: 24,bottom: 24,right: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [

            CustomText(
              text: 'Panier',
              fontSize: 20,

            ),
20.verticalSpace,
            Row(
              children: [
                Icon(Icons.shopping_cart_outlined,color: Colors.black,),
                CustomText(
                  text: 'Elements de panier',
                )
              ],
            ),
            10.verticalSpace,

            Card(
              elevation: 10,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total'),
                        Text('\$11.66'),

                      ],
                    ),
                    30.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Frais d"exportation'),

                       Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.grey,
                         ),
                         child: Row(
                           children: [
                             IconButton(onPressed:(){
                               controller.increasse();

                             } , icon: Icon(Icons.add)),
                             Text('${ controller.counter}'),
                             IconButton(onPressed:(){
                               controller.decreasse();

                             } , icon: Icon(Icons.delete_outline))
                           ],
                         ),
                       ),

                      ],
                    ),
                    30.verticalSpace,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Taxses'),
                        Text('\$11.66'),

                      ],
                    ),
                    15.verticalSpace,

                    Container(
                      height: 1,
                      width: 300,
                      color: Colors.grey,
                    ),
                    15.verticalSpace,


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total d"ordre'),
                        Text('\$11.66'),

                      ],
                    ),




                  ],
                ),
              ),
            ),


            10.verticalSpace,
            
            
            Row(
              children: [
                Icon(Icons.monetization_on_outlined),
                Text('Total',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ))
              ],
            ),

            15.verticalSpace,


            Card(
              elevation: 8,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total'),
                        Text('\$11.66'),

                      ],
                    ),
                    5.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Frais d"exportation'),

                        Text('\$11.66'),

                      ],
                    ),
                    5.verticalSpace,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Taxses'),
                        Text('\$11.66'),

                      ],
                    ),
                    15.verticalSpace,

                    Container(
                      height: 1,
                      width: 300,
                      color: Colors.grey,
                    ),
                    15.verticalSpace,


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total d"ordre'),
                        Text('\$11.66'),

                      ],
                    ),




                  ],
                ),
              ),
            ),

            15.verticalSpace,



            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text('Adresse',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ))
              ],
            ),



            20.verticalSpace,



            Card(
              elevation: 8,
              color: Colors.white,

              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 14,right: 18),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                          Text('Livrer a',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),),



                      10.verticalSpace,
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Paris, rue XXXX appartement'),

                            Text('Paris, 12033'),

                          ],
                        ),
                      ),
                      10.verticalSpace,


                      Text('Ajouter une note',style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),




                      15.verticalSpace,

                      Container(
                        height:69 ,
                        width: 314,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextField(
                            maxLines: 7,
                            cursorColor: Colors.white,


                            decoration: InputDecoration(

                              border: InputBorder.none,

                              hintText: "Taper votre note ici ...",



                            ),
                          ),
                        ),
                      ),
                      15.verticalSpace,









                    ],

                ),
              ),
            ),







          ],

        ),
      ),
    );



        },

      )

    );
  }
}


class ItemPanier extends StatelessWidget {
  const ItemPanier({Key? key,  required this.item}) : super(key: key);
final TopVenduProduit item;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(image: AssetImage('${item.url}')),

          Column(
            children: [
              Text('${item.name}'),
              Text('${item.price}\$'),


            ],
          ),

          AddProduct(),


        ],

      ),
    );
  }
}


class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 18,
        width: 45.63,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.delete_outline,

              ),
            ),
            5.horizontalSpace,

            Text('1',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black
            ),),

            5.horizontalSpace,


            Container(
          
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.add,

              ),
            ),


          ],
        ),
      ),
    );
  }
}






