
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 162 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
            */
            topAirFlightDirPartOfCard(),
            /*
            showing the top orange part of the card/ticket
            */
            centerPartCard(),
            /*
            showing the bottom orange part of the card/ticket
            */
            bottomAirDateTimePartCard(),
          ],
        ),
      ),
    );
  }

  Widget topAirFlightDirPartOfCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppLayout.getHeight(21.0)),
          topRight: Radius.circular(AppLayout.getHeight(21.0)),
        ),
        color: isColor == null ? const Color(0xFF526799) : Colors.white,
      ),
      padding: EdgeInsets.all(AppLayout.getHeight(16.0)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                ticket['from']['code'],
                style: isColor == null
                    ? Styles.headLineStyle3.copyWith(color: Colors.white)
                    : Styles.headLineStyle3,
              ),
              Expanded(child: Container()),
              const ThickContainer(isColor: true),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                        height: AppLayout.getHeight(24.0),
                        child: const LayoutBuilderWidget(
                          sections: 6,
                          
                          isColor: true,
                        )),
                    Center(
                      child: Transform.rotate(
                        angle: 1.5,
                        child: Icon(
                          Icons.local_airport_outlined,
                          color: isColor == null
                              ? Colors.white
                              : const Color(0xFF8ACCF7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //do rotate airport icon

              const ThickContainer(isColor: true),
              Expanded(child: Container()),
              Text(
                ticket['to']['code'],
                style: isColor == null
                    ? Styles.headLineStyle3.copyWith(color: Colors.white)
                    : Styles.headLineStyle3,
              ),
            ],
          ),
          const Gap(3.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: AppLayout.getWidth(100.0),
                child: Text(
                  ticket['from']['name'],
                  style: isColor == null
                      ? Styles.headLineStyle4.copyWith(color: Colors.white)
                      : Styles.headLineStyle4,
                ),
              ),
              Text(
                ticket['flying_time'],
                style: isColor == null
                    ? Styles.headLineStyle4.copyWith(color: Colors.white)
                    : Styles.headLineStyle4,
              ),
              SizedBox(
                width: AppLayout.getWidth(100.0),
                child: Text(
                  ticket['to']['name'],
                  textAlign: TextAlign.end,
                  style: isColor == null
                      ? Styles.headLineStyle4.copyWith(color: Colors.white)
                      : Styles.headLineStyle4,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget centerPartCard() {
    return Container(
      color: isColor == null ? Styles.orangeColor : Colors.white,
      child: Row(
        children: [
          /**
           * right circle 
           */
          SizedBox(
            height: AppLayout.getHeight(20.0),
            width: AppLayout.getWidth(10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isColor == null ? Colors.grey.shade200 : Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppLayout.getHeight(10.0)),
                  bottomRight: Radius.circular(AppLayout.getHeight(10.0)),
                ),
              ),
            ),
          ),
          /**
           * middle - lenght disgn
           */
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppLayout.getHeight(6.0)),
              child: const LayoutBuilderWidget(
                sections: 15,
                isColor: false,
              ),
            ),
          ),
          /**
           * right circle 
           */
          SizedBox(
            height: AppLayout.getHeight(20.0),
            width: AppLayout.getWidth(10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isColor == null ? Colors.grey.shade200 : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(10.0)),
                  bottomLeft: Radius.circular(AppLayout.getHeight(10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomAirDateTimePartCard() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 16, left: 16, right: 16),
      decoration: BoxDecoration(
        color: isColor == null ? Styles.orangeColor : Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(isColor == null ? 21.0 : 0),
          bottomRight: Radius.circular(isColor == null ? 21.0 : 0),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                firstText: ticket['date'],
                secondText: 'Date',
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
              AppColumnLayout(
                firstText: ticket['departure_time'],
                secondText: 'Daparture Time',
                alignment: CrossAxisAlignment.center,
                isColor: false,
              ),
              AppColumnLayout(
                firstText: ticket['number'].toString(),
                secondText: 'Number',
                alignment: CrossAxisAlignment.end,
                isColor: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
