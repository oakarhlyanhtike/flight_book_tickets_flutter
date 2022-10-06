import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16.0)),
        child: Column(
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
              thickContainer(),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(24.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.grey.shade300),
                                      ),
                                    )),
                          );
                        },
                      ),
                    ),
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

              thickContainer(),
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
                color: isColor == null ? Colors.white : Colors.grey.shade200,
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
              child: LayoutBuilder(builder: (context, constraints) {
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                    (constraints.constrainWidth() / 15).floor(),
                    (index) => SizedBox(
                      width: AppLayout.getWidth(5.0),
                      height: AppLayout.getHeight(1.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade300),
                      ),
                    ),
                  ),
                );
              }),
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
                color: isColor == null ? Colors.white : Colors.grey.shade200,
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
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(21.0),
          bottomRight: Radius.circular(21.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ticket['date'],
                    style: isColor == null
                        ? Styles.headLineStyle3.copyWith(color: Colors.white)
                        : Styles.headLineStyle3,
                  ),
                  const Gap(5),
                  Text(
                    'Date',
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ticket['departure_time'],
                    style: isColor == null
                        ? Styles.headLineStyle3.copyWith(color: Colors.white)
                        : Styles.headLineStyle3,
                  ),
                  const Gap(5),
                  Text(
                    'Daparture Time',
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    ticket['number'].toString(),
                    style: isColor == null
                        ? Styles.headLineStyle3.copyWith(color: Colors.white)
                        : Styles.headLineStyle3,
                  ),
                  const Gap(5),
                  Text(
                    'Number',
                    style: isColor == null
                        ? Styles.headLineStyle4.copyWith(color: Colors.white)
                        : Styles.headLineStyle4,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget thickContainer() {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
              width: 2.5,
              color: isColor == null ? Colors.white : const Color(0xFF8ACCF7))),
    );
  }
}
