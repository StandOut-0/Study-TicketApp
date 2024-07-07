import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

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
          child: TicketView(ticket: ticketList[0], isColor: true,))
    ],
  ),
    );
  }
}
