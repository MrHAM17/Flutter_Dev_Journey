import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'provider/product_discover_drawer_provider.dart';

// ignore_for_file: must_be_immutable
class ProductDiscoverDrawerDraweritem extends StatefulWidget {
  const ProductDiscoverDrawerDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  ProductDiscoverDrawerDraweritemState createState() =>
      ProductDiscoverDrawerDraweritemState();
}

class ProductDiscoverDrawerDraweritemState
    extends State<ProductDiscoverDrawerDraweritem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 310.h,
        padding: EdgeInsets.symmetric(
          horizontal: 67.h,
          vertical: 34.v,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36.v),
            Padding(
              padding: EdgeInsets.only(left: 65.h),
              child: Text(
                "lbl_cart".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(left: 57.h),
              child: Text(
                "lbl_profile".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 30.v),
            Padding(
              padding: EdgeInsets.only(left: 50.h),
              child: Text(
                "lbl_clothing".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 27.v),
            Padding(
              padding: EdgeInsets.only(left: 58.h),
              child: Text(
                "lbl_shoes".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomImageView(
                    imagePath: ImageConstant.img5279112Camera,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(right: 12.h),
                  ),
                ),
                Expanded(
                  child: CustomImageView(
                    imagePath: ImageConstant.img5279111NetworkFbSocial,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.symmetric(horizontal: 12.h),
                  ),
                ),
                Expanded(
                  child: CustomImageView(
                    imagePath: ImageConstant.img5305160Inspira,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.symmetric(horizontal: 12.h),
                  ),
                ),
                Expanded(
                  child: CustomImageView(
                    imagePath: ImageConstant.img5279123TweetTwitterTwitter,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
