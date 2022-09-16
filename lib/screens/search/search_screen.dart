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
          AppDoubleTextWidget(),
        ],
      ),
    );
  }
}