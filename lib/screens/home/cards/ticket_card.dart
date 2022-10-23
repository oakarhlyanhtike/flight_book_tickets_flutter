
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

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
