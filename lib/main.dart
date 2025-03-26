import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/routes/app_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoute.INIT,
      getPages: AppRoute.routes,
    );
  }
}
