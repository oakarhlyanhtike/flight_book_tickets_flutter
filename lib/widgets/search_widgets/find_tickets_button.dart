import 'package:bookticket/utils/utils.dart';
import 'package:flutter/material.dart';

class FindTicketButton extends StatelessWidget {
  const FindTicketButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(18.0),
          horizontal: AppLayout.getWidth(15.0)),
      decoration: BoxDecoration(
          color: const Color(0xD91130CE),
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0))),
      child: Center(
        child: Text(
          'Find Tickets',
          style: Styles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
