
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upcoming Flights ',
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
    );
  }
}
