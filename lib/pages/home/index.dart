import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/routes/app_pages.dart';
import '../list_detail/index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          //routing and navigation
          ListTile(
            title: const Text('home > list'),
            subtitle: const Text('Get.toNamed("/home/list")'),
            onTap: () => Get.toNamed('/home/list'),
          ),
          ListTile(
            title: const Text('home > list > detail'),
            subtitle: const Text('Get.toNamed("/home/list/detail")'),
            onTap: () => Get.toNamed('/home/list/detail'),
          ),
          ListTile(
            title: const Text('navigation class'),
            subtitle: const Text('Get.to(DetailView())'),
            onTap: () => Get.to(const DetailView()),
          ),
          ListTile(
            title: const Text('navigation-remove last'),
            subtitle: const Text('Get.off(DetailView())'),
            onTap: () => Get.off(const DetailView()),
          ),
          ListTile(
            title: const Text('navigation-remove all'),
            subtitle: const Text('Get.offAll(DetailView())'),
            onTap: () => Get.offAll(const DetailView()),
          ),
          const Divider(),

          ListTile(
            title: const Text('navigation-arguments communication'),
            subtitle: const Text(
                'Get.toNamed(\'/home/list/detail\', arguments: {\'id\':999})'),
            onTap: () async {
              var result = await Get.toNamed('/home/list/detail',
                  arguments: {'id': 999});
              Get.snackbar('return value', 'success -> ${result['success']}');
            },
          ),

          ListTile(
            title: const Text('navigation-parameters communication'),
            subtitle: const Text('Get.toNamed(\'/home/list/detail?id=666\')'),
            onTap: () async {
              var result = await Get.toNamed(
                '/home/list/detail?id=666',
              );
              Get.snackbar('return value', 'success -> ${result['success']}');
            },
          ),

          ListTile(
            title: const Text('navigation-parameters communication'),
            subtitle: const Text('Get.toNamed(\'/home/list/detail/777\')'),
            onTap: () async {
              var result = await Get.toNamed(
                '/home/list/detail/777',
              );
              Get.snackbar('return value', 'success -> ${result['success']}');
            },
          ),

          ListTile(
            title: const Text('navigation-not found'),
            subtitle: const Text('Get.toNamed(\'/aaa/bbb/ccc\')'),
            onTap: () => Get.toNamed('/aaa/bbb/ccc'),
          ),

          ListTile(
            title: const Text('navigation-middleware-auth'),
            subtitle: const Text('Get.toNamed(AppRoutes.my)'),
            onTap: () => Get.toNamed(AppRoutes.my),
          ),
        ],
      ),
    );
  }
}
