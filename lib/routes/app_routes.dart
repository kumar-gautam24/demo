import 'package:gautam_kumar_cs_39_s_application1/presentation/frame_screen/frame_screen.dart';
import 'package:gautam_kumar_cs_39_s_application1/presentation/frame_screen/binding/frame_binding.dart';
import 'package:gautam_kumar_cs_39_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:gautam_kumar_cs_39_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String frameScreen = '/frame_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: frameScreen,
      page: () => FrameScreen(),
      bindings: [
        FrameBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => FrameScreen(),
      bindings: [
        FrameBinding(),
      ],
    )
  ];
}
