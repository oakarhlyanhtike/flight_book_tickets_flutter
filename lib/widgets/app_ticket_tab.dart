import 'package:bookticket/utils/utils.dart';
import 'package:flutter/material.dart';
class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
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
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50.0))),
              child: const Center(
                child: Text('Airline Tickets'),
              ),
            ),
             /*
              hotels tickets
             */
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50.0))),
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
    );
  }
}
