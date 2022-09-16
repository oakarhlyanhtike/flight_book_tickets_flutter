import 'package:bookticket/screens/home/cards/hotel_card.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'cards/ticket_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            //flight title
            Container(
              padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20.0)),
              child: Column(
                children: [
                  const Gap(50),
                  //header Widget
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning ',
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'Book Tickets ',
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/img_1.jpeg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                  const Gap(25),
                  //searchbox widget
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 12.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F6FD),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xfffbfc205),
                        ),
                        Text(
                          'Search',
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                  const Gap(40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                        child: Text(
                          'View all',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(15),

            //upcoming flight card
            const TicketCard(),
            const Gap(15),

            //hotels title
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotels ',
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    child: Text(
                      'View all',
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              ),
            ),
            const Gap(15),

            //hotel card
           const HotelCard()
           
          ],
        ),
      ),
    );
  }
}
