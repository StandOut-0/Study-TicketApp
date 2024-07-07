import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../res/media.dart';
import '../../../res/style/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 400,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: size.width*.42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 2
                )
              ]
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            AppMedia.palneSit
                        )
                    )
                ),
              ),
              SizedBox(height: 12),
              Text("20% discount on the early bookng of this flight, Dont miss!",
                style: AppStyles.headLineStyle2,)
            ],
          ),
        ),
        Column(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: size.width*.44,
                      height: 220,
                      decoration: BoxDecoration(
                          color: Color(0xff3a88b8),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Discount\nfor survey",
                              style: AppStyles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)
                          ),
                          SizedBox(height: 10),
                          Text("Take the survey about out service and get discount",
                              style: AppStyles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18,
                                  color: AppStyles.circleColor
                              )
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width*.44,
                  height: 160,
                  decoration: BoxDecoration(
                      color: Color(0xffec6545),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Text("Take Love", style: AppStyles.headLineStyle2.copyWith(
                          color: Colors.white),),
                      SizedBox(height: 10),
                      RichText(text: TextSpan(
                        text: " 😍 ", style: TextStyle(fontSize: 70)
                      ))
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
