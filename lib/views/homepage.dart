import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/controllers/homepage_controller.dart';

class Homepage extends GetView<HomepageController> {
  const Homepage({super.key});

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
          Get.offNamed('/cardpage');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
