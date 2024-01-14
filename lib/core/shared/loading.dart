import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:happyfrutflutter/constance.dart';


class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Center(
        child: SpinKitSpinningLines(
          color: Colors.yellow,
          size: 50,
        ),
      ),
    );
  }
}
