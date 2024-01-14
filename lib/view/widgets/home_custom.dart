import 'package:flutter/material.dart';

class HeaderCustom extends StatelessWidget {
  const HeaderCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

    padding: const EdgeInsets.only(top: 20),
    child: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart),color: Colors.white,iconSize: 35,),
    const Image(image: AssetImage(
    "assets/images/img_9.png",
    ),height: 59,
    width: 105,
    ),
    IconButton(onPressed: (){}, icon: const Icon(Icons.notifications),color: Colors.white,iconSize: 35,)
    ],
    ),

    Padding(
    padding: const EdgeInsets.fromLTRB(10,20,10,20),
    child: Container(
    height: 50,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color:Color(0xFFFFC47E),

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













    ],

    ),



    );
  }
}








