
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constance.dart';
import '../../core/services/authservice.dart';
import '../../core/shared/loading.dart';
import '../widgets/cost_text.dart';

class Sing_in extends StatefulWidget {





  @override
  State<Sing_in> createState() => _Sing_inState();
}

class _Sing_inState extends State<Sing_in> {
  final AuthServices _authServices= AuthServices();
  final _formkey =GlobalKey<FormState>();
  bool loading=false;



  String email='';
  String pass='';
  String erreur='';

  @override
  Widget build(BuildContext context) {
    return loading?Loading(): Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation: 0,
        title: Text(''),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),

        child:Form(
          key: _formkey,
          child: Column(

          children: [
            Center(
              child: Container(

                child: Column(
                  children: [
                    Column(
                      children:  [
                        SizedBox(height: 50),
                        Image(
                          image: AssetImage("assets/images/img.png"),
                          height: 172,
                          width: 306,
                        ),

                        CustomText(
                          text: "HappyFruta",
                          fontSize: 30,
                          color: Colors.black,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 20)



                      ],
                    ),




                  ],

                ),

              ),

            ),

            CustomText(text: "Veuillez saisir les informations de"
              ,fontSize: 17,
              color: Colors.black,
              alignment: Alignment.center,
            ),
            CustomText(
              text: "  votre compte pour vous connecter",
              fontSize: 17,
              color: Colors.black,
              alignment: Alignment.center,
            ),


            SizedBox(height: 30),
            Column(
              children: [
                TextFormField(




                    decoration: InputDecoration(
                      prefixIcon:  Icon(
                        Icons.email_outlined,
                        color: Colors.grey.shade400,

                      ),
                      hintText: "E-mail adresse",
                      hintStyle: TextStyle(
                        color: Colors.grey,


                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: primaryColor,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(15)



                      ),


                    ),
                  validator: (val)=>val!.isEmpty?'Enter your email':null,

                  onChanged: (val){
                    setState(()=>email=val );

                  },

                )],
            ),
            SizedBox(height: 25),

            Column(
              children: [
                TextFormField(

                  validator: (val)=>val!.length<6?'Enter a pass >6':null,

                  onChanged: (val){
                    setState(()=>pass=val );


                  },

                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey.shade400,

                    ),
                    hintText: "Mot de passe",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.shade300,
                          width: 2
                      ),
                      borderRadius: BorderRadius.circular(15),

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: primaryColor,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(15)



                    ),


                  ),

                )
              ],
            ),
            SizedBox(height: 15)
            ,
            GestureDetector(

              onTap: () {
                // Navigate to a new screen or launch a URL
                launchUrlString('https://www.google.com');
              },
              child: CustomText(
                text: "Mot de passe oublié ?",
                fontSize: 17,
                color: primaryColor,
                alignment: Alignment.topRight,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(

              onPressed: ()async{
                if(_formkey.currentState!.validate()){
                  setState(() =>loading=true);
                  dynamic result=await _authServices.signInwithemailandpass(email, pass);
                  if(result==null){
                    setState((){
                      erreur='could not sing i, with those credentials ';
                      loading=false;
                    });

                  }
                }

              },
              child:CustomText(
                text: "Se connecter",
                color: Colors.white,
                fontSize: 15,
                alignment: Alignment.center,
              ),
              style: TextButton.styleFrom(
                maximumSize: Size(302, 60),
                backgroundColor: primaryColor,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),



              ),


            ),
            SizedBox(height: 12),
            Text(
              erreur,
              style:TextStyle(color: Colors.red,fontSize: 14) ,
            ),


          ],
        ),
      ),
      ),
    );
  }
}

