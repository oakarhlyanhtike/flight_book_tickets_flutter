import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({Key? key, this.isColor, required this.sections,this.width=3})
      : super(key: key);

  final bool? isColor;
  final int sections;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
          (constraints.constrainWidth() / sections).floor(),
          (index) => SizedBox(
            width: width,
            height: AppLayout.getHeight(1.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey.shade300),
            ),
          ),
        ),
      );
    });
  }
}
