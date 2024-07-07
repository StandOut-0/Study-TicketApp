import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/base/screens/search/widgets/app_ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("What are\nyou looking fot?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          AppTicketTabs(),
          SizedBox(height: 25),
          AppTextIcon( icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 25),
          AppTextIcon( icon: Icons.flight_land_rounded, text: "Arrival"),
        ],
      )
    );
  }
}
