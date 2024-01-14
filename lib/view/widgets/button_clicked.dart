import 'package:flutter/material.dart';
import 'package:happyfrutflutter/constance.dart';
class MyIconButton extends StatefulWidget {
  @override
  _MyIconButtonState createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.add_comment),
      color: _isClicked ? primaryColor : Colors.black12,
      onPressed: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
    );
  }
}







