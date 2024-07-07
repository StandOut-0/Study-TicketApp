import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/screens/widgets/hotel.dart';

import '../utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("All Hotels")
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList.map((singleTicket)
              => Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Hotel(hotel: singleTicket, wholeScreen: true))).toList(),
            ),
          )
        ],
      ),
    );;
  }
}
