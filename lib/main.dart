import 'package:clean_code/config/routes/route_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/route_name.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media of World',
      initialRoute: RouteName.splashScreen,
      getPages: AppPageRoute.pages,
    ),
  );
}

