import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup50,
      activeIcon: ImageConstant.imgGroup50,
      type: BottomBarEnum.Group50,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup125,
      activeIcon: ImageConstant.imgGroup125,
      type: BottomBarEnum.Group125,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup124,
      activeIcon: ImageConstant.imgGroup124,
      type: BottomBarEnum.Group124,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup34,
      activeIcon: ImageConstant.imgGroup34,
      type: BottomBarEnum.Group34,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.v,
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 22.v,
                width: 19.h,
                color: theme.colorScheme.primaryContainer,
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 19.v,
                width: 23.h,
                color: theme.colorScheme.primaryContainer,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Group50,
  Group125,
  Group124,
  Group34,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
