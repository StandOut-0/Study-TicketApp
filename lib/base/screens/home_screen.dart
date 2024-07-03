import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/style/app_styles.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good morning",
                              style: AppStyles.headLineStyle3),
                          const SizedBox(
                              height: 5
                          ),
                          Text("Book Tickets",
                              style: AppStyles.headLineStyle1
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),


                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Search icon"),
                      Text("Empty space")
                    ],
                  )
                ],
              ),
            )
          ]
      ),
    );
  }
}
