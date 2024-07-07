import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/text_style_Fourth.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../../widgets/app_layoutBuilder_widget.dart';
import '../../widgets/text_style_third.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
  body: ListView(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal:20),
    children: [
      SizedBox(height: 40),
      Text("Tickets", style: AppStyles.headLineStyle1,),
      SizedBox(height: 20),
      AppTicketTabs(firstTab:"Upcoming", secondTab: "Preveious"),
      SizedBox(height: 20),
      Container(
          padding: EdgeInsets.only(left: 16),
          child: TicketView(ticket: ticketList[0], isColor: true,)),
      SizedBox(height: 1),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        color: AppStyles.ticktWhite,
        child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width:100,
                  child: TextStyleThird(text: "Flutter DB", isColor: true)
              ),
              SizedBox(
                width:100,
                child:
                TextStyleThird(text: "5221 36B69", isColor: true, align: TextAlign.end),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width:100,
                  child: TextStyleFourth(text: "Passenger", isColor: true)
              ),
              SizedBox(
                width:100,
                child:
                TextStyleFourth(text: "passport", isColor: true, align: TextAlign.end),
              )
            ],
          ),

          SizedBox(height: 20),
          AppLayoutBuilderWidget(randomDivider: 15,width: 5, isColor: true),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width:100,
                  child: TextStyleThird(text: "38949 4849", isColor: true)
              ),
              SizedBox(
                width:100,
                child:
                TextStyleThird(text: "B36499", isColor: true, align: TextAlign.end),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width:130,
                  child: TextStyleFourth(text: "Number of E-ticket", isColor: true)
              ),
              SizedBox(
                width:90,
                child:
                TextStyleFourth(text: "Booking code", isColor: true, align: TextAlign.end),
              )
            ],
          ),

          SizedBox(height: 20),
          AppLayoutBuilderWidget(randomDivider: 15,width: 5, isColor: true),
          SizedBox(height: 20),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(AppMedia.visaCard, scale: 11,)  ,
                      TextStyleThird(text: " *** 2411", isColor: true)
                    ],
                  )
                ],
              ),
              SizedBox(
                width:100,
                child:
                TextStyleThird(text: "\$249.99", isColor: true, align: TextAlign.end),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width:130,
                  child: TextStyleFourth(text: "Payment method", isColor: true)
              ),
              SizedBox(
                width:90,
                child:
                TextStyleFourth(text: "Price", isColor: true, align: TextAlign.end),
              )
            ],
          ),
        ],
        ),
      ),
      SizedBox(height: 1),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color:AppStyles.ticktWhite,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(21),
              bottomLeft: Radius.circular(21)
          )
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ClipRRect(
            borderRadius:BorderRadius.circular(15),
            child: BarcodeWidget(
              height: 78,
              barcode: Barcode.code128(),
              data: "https://standout.tistory.com/",
              drawText: false,
              color: AppStyles.textColor,
              width: double.infinity,
            ),
          ),
        ),
      ),

      SizedBox(height: 20),
      Container(
          padding: EdgeInsets.only(left: 16),
          child: TicketView(ticket: ticketList[0])),
    ],
  ),
    );
  }
}
