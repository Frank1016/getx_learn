import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/common/routes/app_pages.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: ListTile(
          title: const Text('Return to home page'),
          subtitle: const Text('Get.offAllNamed(AppRoutes.home)'),
          onTap: () => Get.offAllNamed(AppRoutes.home),
        ));
  }
}
