import 'package:bookticket/utils/app_info_list.dart';
import 'package:flutter/material.dart';
import '../../../widgets/home_widgets/ticket_view.dart';
class TicketCard extends StatelessWidget {
  const TicketCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
        
      ),
    );
  }
}
