import 'package:flutter/material.dart';
import 'dart:ui';
import 'cost_text.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String hint;
  final bool isobscureText;
  final Function onSave;
  final Function validator;


  CustomTextField(
      this.text, this.hint, this.isobscureText, this.onSave, this.validator);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
              text: text,
              fontSize: 14,
              color: Colors.grey.shade900
          ),TextFormField(

            obscureText: isobscureText,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                fillColor: Colors.white
            ),
          )
        ],
      ),
    );
  }
}




