import '../models/frame6_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame6ItemWidget extends StatelessWidget {
  Frame6ItemWidget(
    this.frame6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame6ItemModel frame6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: CustomImageView(
        imagePath: frame6ItemModelObj?.unsplashQnUURoX,
        height: 58.adaptSize,
        width: 58.adaptSize,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
