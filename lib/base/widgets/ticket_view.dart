import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_Fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

import 'app_layoutBuilder_widget.dart';
import 'big_circle.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false,
    this.isColor = null});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 178,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor==null? AppStyles.ticketBlue:AppStyles.ticktWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)
                )
              ),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleThird(text: ticket["from"]["code"], isColor: isColor),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6, isColor: isColor),
                          ),
                          Center(
                              child: Transform.rotate(angle: 1.5,
                              child: Icon(Icons.local_airport_rounded, color: isColor == null?
                              Colors.white: AppStyles.isColorTrueLightBlue
                              )
                              )
                          )
                        ],
                      )),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"], isColor: isColor),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:100,
                        child:TextStyleFourth(text: ticket["from"]["name"], isColor: isColor),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['flying_time'], isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                        width:100,
                        child: TextStyleFourth(text: ticket["to"]["name"],
                            align: TextAlign.end
                            , isColor: isColor),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              color: isColor==null?AppStyles.ticketOrange:AppStyles.ticktWhite,
              child: Row(
                children: [
                  BigCircle(isRight: false, isColor: isColor),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 16,
                    width: 6,
                  isColor: isColor)),
                  BigCircle(isRight: true, isColor: isColor)
                ],
              )
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null? AppStyles.ticketOrange:
                  AppStyles.ticktWhite,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null?21:0),
                      bottomRight: Radius.circular(isColor == null?21:0)
                  )
              ),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:100,
                        child: TextStyleThird(text: ticket['date'], isColor: isColor)
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket['departure_time'], isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                        width:100,
                        child:
                        TextStyleThird(text: ticket['number'].toString(), isColor: isColor, align: TextAlign.end),

                      )
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:100,
                        child:
                        TextStyleFourth(text:'Date', isColor: isColor),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text:'Departure time', isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                        width:100,
                        child: TextStyleFourth(text:'Number', align: TextAlign.end, isColor: isColor),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
