import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  const BigCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:10, height: 20,
      child: DecoratedBox(decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isRight == true? const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10)
          ):const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)
          )
      ),

      ),
    );
  }
}