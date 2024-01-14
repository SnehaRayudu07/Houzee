import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 20.adaptSize,
          width: 20.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconmonstrBasket1,
          ),
        ),
      ),
    );
  }
}
