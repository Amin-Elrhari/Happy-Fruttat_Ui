import 'package:flutter/material.dart';

import '../../constance.dart';
import '../../model/produit_top.dart';
import 'button_clicked.dart';
import 'cost_text.dart';

class TopVendu extends StatelessWidget {
   TopVendu({Key? key}) : super(key: key);
  final List<TopVenduProduit> _items=[
    TopVenduProduit(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc' ,price:5),
    TopVenduProduit(name: 'Avocat', url: 'assets/images/Avocat.png',pay:'Senigal' ,price:9 ),
    TopVenduProduit(name: 'Tomate', url: 'assets/images/Tomate.png',pay:'Maroc',price:5 )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.290,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder:(_,i)=>TopVenduItem(
          item: _items[i]
        ), separatorBuilder: (_,__)=>SizedBox(width: 13) ,
      ),
    );
  }
}

class TopVenduItem extends StatelessWidget {
  const TopVenduItem({Key? key, required this.item}) : super(key: key);
final TopVenduProduit item;
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
              Container(
                alignment: Alignment.topRight,
                child: MyIconButton(),
              ),


              Image.asset('${item.url}',height: constraints.maxHeight * 0.3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

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






