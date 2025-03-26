import 'package:get/get.dart';
import 'package:getx_route/bindings/homepage_binding.dart';
import 'package:getx_route/views/cardpage.dart';
import 'package:getx_route/views/homepage.dart';

class AppRoute {
  static const String INIT = "/homepage";

  static final routes = [
    GetPage(
        name: "/homepage", page: () => Homepage(), binding: HomepageBinding()),
    GetPage(name: "/cardpage", page: () => Cardpage())
  ];
}
