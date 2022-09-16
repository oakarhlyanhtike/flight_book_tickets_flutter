import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    debugPrint('${Get.height}');
    return Get.height;
  }

  static getScreenWidth() {
    debugPrint('${Get.height}');
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    debugPrint('get Height is $x');
    debugPrint('getScreen Height ${getScreenHeight() / x}');
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    debugPrint('get width $x');
    debugPrint('getscreen width ${getScreenHeight() / x}');
    return getScreenWidth() / x;
  }
}
