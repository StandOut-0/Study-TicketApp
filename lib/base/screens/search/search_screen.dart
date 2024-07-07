import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/base/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/base/screens/search/widgets/find_tickets.dart';

import '../../widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          AppTicketTabs(),
          SizedBox(height: 25),
          AppTextIcon( icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 25),
          AppTextIcon( icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 25),
          FindTickets(),

          SizedBox(height: 40),
          AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all',
            func: () => Navigator.pushNamed(context, "/all_tickets") ,),
          SizedBox(height: 15),
          Row(
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
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
