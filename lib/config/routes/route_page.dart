import 'package:clean_code/ui/pages/detail_page.dart';
import 'package:get/get.dart';

import '../../ui/pages/splash_screen.dart';
import '../../ui/pages/home_page.dart';
import 'route_name.dart';

class AppPageRoute {
  static final pages = [
    GetPage(name: RouteName.splashScreen, page: () => const SplashScreen()),
    GetPage(name: RouteName.homePage, page: () => HomePage()),
    GetPage(name: RouteName.detailPage, page: () => DetailPage()),
  ];
}