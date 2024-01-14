import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happyfrutflutter/constance.dart';
import 'package:happyfrutflutter/view/widgets/nav_cost.dart';

import '../../model/produit_p.dart';
import 'button_clicked.dart';
import 'cost_text.dart';
import 'home_custom.dart';
class  Promotion_Legumes extends StatelessWidget {
  const Promotion_Legumes({Key? key, required this.item}) : super(key: key);
  final MGrocery item;
  @override
  Widget build(BuildContext context) {


    return Card(
      elevation: 5,



      child: Container(

        height: MediaQuery.of(context).size.height*0.3,

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          color: Colors.white,

        ),



        child: LayoutBuilder(
          builder: (_,BoxConstraints constraints){
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:8.sp,right: 8.sp,bottom:1.sp),
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
                        padding:  EdgeInsets.only(left:8.sp,right: 8.sp,bottom:0.sp,top: 1.sp),
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
      ),
    );

  }
}






