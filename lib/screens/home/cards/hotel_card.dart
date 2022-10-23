
import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

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
