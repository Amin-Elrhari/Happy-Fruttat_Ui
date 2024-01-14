import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constance.dart';
import '../../model/produit_p.dart';
import '../auth/secend_screen.dart';
import 'button_clicked.dart';
import 'cost_text.dart';

class Promotions extends StatelessWidget {
  Promotions({Key? key}) : super(key: key);
  final List<MGrocery> _item=[
    MGrocery(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc' ,price_sans_redu: 10,redu:'-50%',price:5),
    MGrocery(name: 'Avocat', url: 'assets/images/Avocat.png',pay:'Senigal' ,price_sans_redu:12 ,redu:'-30%',price:9 ),
    MGrocery(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc',price_sans_redu:10  ,redu:'-50%',price:5 )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.300,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: _item.length,
        itemBuilder:(_,i)=>PromotedItems(
          item:_item[i] ,

        ), separatorBuilder: (_,__)=>SizedBox(width: 13) ,
      ),
    );
  }
}

class PromotedItems extends StatelessWidget {
  const PromotedItems({Key? key, required this.item}) : super(key: key);
  final MGrocery item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.4,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor,width: 1.5),
        borderRadius: BorderRadius.circular(15),

      ),
      child: LayoutBuilder(
        builder: (_,BoxConstraints constraints){
          return Column(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:8.sp,right: 8.sp,bottom:0.sp),
                    child: Container(

                      height: 29,
                      width: 29,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(50)),
                      child: CustomText(
                        text: '${item.redu}',
                        fontSize: 12,
                        color: Colors.white,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),




                  Container(
                    child: Padding(
                      padding:  EdgeInsets.only(left:8.sp,right: 8.sp,bottom:0.sp,top: 4.sp),
                      child: MyIconButton(),
                    ),
                  )

                ],
              ),

              Image.asset(
                item.url,height: constraints.maxHeight * 0.3,

              ),


              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    '${item.price_sans_redu}\$  ',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                        fontSize: 18,
                      color: Colors.grey
                    ),

                  ),
                  Text(
                      '${item.price}\$',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),

                  )
                ],
              ),
              CustomText(
                text: '${item.name}',
                fontSize: 18,
                alignment: Alignment.center,
              ),
              CustomText(
                text: '${item.pay}',
                fontSize: 18,
                color: Colors.black26,
                alignment: Alignment.center,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Acheter'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 20,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
                ),
              ),
              )],
          );
        },
      ),
    );
  }
}






