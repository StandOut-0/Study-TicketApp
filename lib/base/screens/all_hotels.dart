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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing:16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 1.0
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index){
              return Container(
                child: Text("grid"),
              );
            }
        ),
      )
      );
  }
}
