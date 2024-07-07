import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  final bool? isColor;
  const BigCircle({super.key, required this.isRight, this.isColor = null});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:10, height: 20,
      child: DecoratedBox(decoration: BoxDecoration(
          color: isColor == null? AppStyles.bgColor:AppStyles.ticktWhite,
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
