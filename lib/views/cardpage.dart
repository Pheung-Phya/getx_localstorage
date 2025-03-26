import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/controllers/homepage_controller.dart';

class Cardpage extends StatelessWidget {
  Cardpage({super.key});

  final controller = Get.find<HomepageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to the Homepage'),
      ),
      body: Obx(
        () => Center(
          child: Text('${controller.count}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
