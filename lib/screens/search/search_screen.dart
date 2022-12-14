import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

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
          const  AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels',),
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
                height: AppLayout.getHeight(425),
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
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
                      Positioned(
                        top: -40,
                        right: -45,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //color: Colors.transparent,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xFF189999),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15),
                        vertical: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6546),
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '????', style: TextStyle(fontSize: 28)),
                          TextSpan(text: '????', style: TextStyle(fontSize: 40)),
                          TextSpan(text: '????', style: TextStyle(fontSize: 28))
                        ]))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
