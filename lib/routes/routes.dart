import 'package:aedvans_exam_1/screen/detail/view/detail_screen.dart';
import 'package:aedvans_exam_1/screen/home/view/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static String home = '/';
  static String detail = '/detail';
  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.home: (context) => const HomeScreen(),
    Routes.detail: (context) => const DetailScreen(),
  };
}
