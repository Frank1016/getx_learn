import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/routes/app_pages.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route not found'),
      ),
      body: ListTile(
        title: const Text('return to main page'),
        subtitle: const Text('Get.offAllNamed(AppRoutes.home)'),
        onTap: () => Get.offAllNamed(AppRoutes.home),
      ),
    );
  }
}
