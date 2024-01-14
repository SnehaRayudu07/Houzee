import 'controller/main_home_page_container1_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/main_home_page_container_page/main_home_page_container_page.dart';
import 'package:houzee/widgets/custom_bottom_bar.dart';

class MainHomePageContainer1Screen
    extends GetWidget<MainHomePageContainer1Controller> {
  const MainHomePageContainer1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.mainHomePageContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group50:
        return AppRoutes.mainHomePageContainerPage;
      case BottomBarEnum.Group125:
        return "/";
      case BottomBarEnum.Group124:
        return "/";
      case BottomBarEnum.Group34:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainHomePageContainerPage:
        return MainHomePageContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
