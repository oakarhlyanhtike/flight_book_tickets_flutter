import 'package:bookticket/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String title;

  const AppIconText({
    Key? key,
    required this.icon,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12.0),
          horizontal: AppLayout.getWidth(12.0)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0))),
      child: Row(
        children: [
           Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidth(10.0)),
          Text(
            title,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
