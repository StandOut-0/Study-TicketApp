import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';

import '../widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets")
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
      children: ticketList.map((singleTicket)
      => TicketView(ticket: singleTicket)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
