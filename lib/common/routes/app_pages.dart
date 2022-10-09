import 'package:get/get.dart';
import 'package:getx_learn/pages/home/index.dart';
import 'package:getx_learn/pages/list/index.dart';

import '../../pages/list_detail/index.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = AppRouts.home;

  static final routes = [
    //home > list > detail
    GetPage(name: AppRouts.home, page: () => const HomeView(), children: [
      GetPage(name: AppRouts.list, page: () => const ListView(), children: [
        GetPage(
          name: AppRouts.detail,
          page: () => const DetailView(),
        ),
      ]),
    ]),
  ];
}
