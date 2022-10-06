import 'package:bookticket/utils/utils.dart';
import 'package:bookticket/widgets/app_ticket_tab.dart';
import 'package:bookticket/widgets/home_widgets/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Ticket',
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'previous'),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
