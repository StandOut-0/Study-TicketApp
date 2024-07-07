import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/screens/widgets/hotel.dart';

import '../res/style/app_styles.dart';
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
                childAspectRatio: 0.9
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index){
              var singleHotel = hotelList[index];
              return HotelGridView(hotel: singleHotel);
            }
        ),
      )
      );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final bool wholeScreen;
  const HotelGridView({super.key, required this.hotel, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: wholeScreen == true?EdgeInsets.only(left:16, right:16):EdgeInsets.only(right: 16) ,
      padding: EdgeInsets.all(8.0),
      // width: size.width* (wholeScreen == true?1:0.6),
      height: 350,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)
      ),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
                // height: 180,
                decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/${hotel['image']}"
                        )
                    )
                )
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel['place'], style: AppStyles.headLineStyle1.copyWith(
                color: AppStyles.kakiColor
            ),),
          ), SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel['destination'], style: AppStyles.headLineStyle3.copyWith(
                color: Colors.white
            ),),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("\$${hotel['price']}/nights", style: AppStyles.headLineStyle1.copyWith(
                color: AppStyles.kakiColor
            ),),
          )
        ],
      ),
    );
  }
}

