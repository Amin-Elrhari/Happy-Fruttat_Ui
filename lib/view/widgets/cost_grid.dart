import 'package:flutter/material.dart';
import 'package:happyfrutflutter/view/widgets/promotion_fruit.dart';
import 'package:happyfrutflutter/view/widgets/promotion_legume.dart';

import '../../model/produit_p.dart';

class GridCostume extends StatelessWidget {
   GridCostume({Key? key, required this.item, required this.gsvh}) : super(key: key);
  final List<MGrocery> item;

   final bool gsvh;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:40 ,top:10 ,right: 40,bottom: 8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),

        scrollDirection: Axis.vertical,
        itemCount: item.length,

        itemBuilder:(_,i){
          if(gsvh==true){
            return Promotion_Fruit(
              item:item[i] ,
            );
          }
          else{
           return Promotion_Legumes(
              item:item[i] ,
            );
          }

        }
        , gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 137,
          childAspectRatio: 1/2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 20
      ) ,
      ),

    );
  }
}



