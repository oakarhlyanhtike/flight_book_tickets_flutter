import 'package:bookticket/widgets/home_widgets/hotel_view.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 20),
      child: Row(
          children: hotelList.map((hotel) => HotelView(hotel: hotel)).toList()),
    );
  }
}
