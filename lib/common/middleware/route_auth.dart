import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/routes/app_pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    Future.delayed(const Duration(seconds: 1),
        () => Get.snackbar('Notice', 'Please login first'));
    return const RouteSettings(name: AppRoutes.login);
  }
}
