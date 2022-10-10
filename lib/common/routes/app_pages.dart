import 'package:get/get.dart';
import 'package:getx_learn/pages/home/index.dart';
import 'package:getx_learn/pages/list/index.dart';
import 'package:getx_learn/pages/login/index.dart';

import '../../pages/list_detail/index.dart';
import '../../pages/my/index.dart';
import '../../pages/not_found/index.dart';
import '../middleware/route_auth.dart';

part 'app_routes.dart';

class AppPages {
  //home page
  static const initial = AppRoutes.home;

  //404
  static final unknownRoute =
      GetPage(name: AppRoutes.notFound, page: () => const NotFoundView());

  //routes
  static final routes = [
    //whitelist
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      transition: Transition.downToUp,
    ),
    //middleware to login
    GetPage(name: AppRoutes.my, page: () => const MyView(), middlewares: [
      RouteAuthMiddleware(),
    ]),

    //home > list > detail
    GetPage(name: AppRoutes.home, page: () => const HomeView(), children: [
      GetPage(name: AppRoutes.list, page: () => const ListView(), children: [
        GetPage(
          name: AppRoutes.detail,
          page: () => const DetailView(),
        ),
        GetPage(
          name: AppRoutes.detailId,
          page: () => const DetailView(),
        ),
      ]),
    ]),
  ];
}
