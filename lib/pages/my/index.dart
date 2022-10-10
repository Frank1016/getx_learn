import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/common/routes/app_pages.dart';

class MyView extends StatelessWidget {
  const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My'),
        ),
        body: ListTile(
          title: const Text('Return to home page'),
          subtitle: const Text('Get.offAllNamed(AppRoutes.home)'),
          onTap: () => Get.offAllNamed(AppRoutes.home),
        ));
  }
}
