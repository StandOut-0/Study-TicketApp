import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/screens/all_tickets.dart';
import 'package:ticket_app/base/screens/ticket/ticket_screen.dart';

import 'base/screens/all_hotels.dart';
import 'base/screens/ticket/hotel_detail.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                                                                                                                                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // home: const BottomNavBar(),
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all_tickets":(context) => const AllTickets(),
        "/all_tickets":(context) => const AllTickets(),
        "/all_hotels":(context) => const AllHotels(),
        "/ticket_view":(context) => const TicketScreen(),
        "/hotel_detail":(context) => const HotelDetail(),
      },
    );
  }
}
