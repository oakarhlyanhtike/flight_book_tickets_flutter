import 'package:flutter/material.dart';

import '../../utils/app_layout.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container();
  }
}
