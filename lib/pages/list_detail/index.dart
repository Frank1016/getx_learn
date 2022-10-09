import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  _buildBackListTileRow(Map val) {
    return val.isEmpty
        ? Container()
        : ListTile(
            title: Text('carry id = ${val['id']}'),
            subtitle: const Text('Get.back(result:{\'success\':true})'),
            onTap: () => Get.back(result: {'success': true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    final details = Get.arguments ?? {};
    final parameters = Get.parameters;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Navigation-return'),
            subtitle: const Text('Get.back()'),
            onTap: () => Get.back(),
          ),
          _buildBackListTileRow(details),
          _buildBackListTileRow(parameters),
        ],
      ),
    );
  }
}
