import 'package:bookticket/widgets/search_widgets/app_icon_text.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widgets/app_double_text_widget.dart';
import '../../widgets/search_widgets/find_tickets_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20.0),
            vertical: AppLayout.getHeight(20.0)),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          Text(
            'What are you looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35.0)),
          ),
          Gap(AppLayout.getHeight(20.0)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              // ignore: sort_child_properties_last
              child: Row(
                children: [
                  /*
                  airline tickets
                  */
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50.0))),
                    child: const Center(
                      child: Text('Airline Tickets'),
                    ),
                  ),
                  /*
                  hotels tickets
                  */
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(50.0))),
                    child: const Center(
                      child: Text('Hotels'),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(50.0),
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25.0)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, title: 'Depature'),
          Gap(AppLayout.getHeight(20.0)),
          const AppIconText(icon: Icons.flight_land_rounded, title: 'Arrival'),
          Gap(AppLayout.getHeight(25.0)),
          const FindTicketButton(),
          Gap(AppLayout.getHeight(40.0)),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flighs', smallText: 'View all '),
          Gap(AppLayout.getHeight(15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.42,
                height: AppLayout.getHeight(400),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(10),
                    vertical: AppLayout.getWidth(10)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12.0)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10.0)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/sit.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      '20% discount on the early booking of the flight. Don\'t miss out the chance',
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15),
                            vertical: AppLayout.getWidth(15)),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(12.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor Survey',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10.0)),
                            Text(
                              'Take the survey about our service and get discount.',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(18)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      //color: Colors.transparent,
                      border: Border.all(
                        width: 18,
                        color: Color(0xFF189999),
                      ),
                    ),
                  ),
                    ],
                  ),
                  
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
