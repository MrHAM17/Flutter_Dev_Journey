import '../models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24.v),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse12,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 3.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          frame1ItemModelObj.albertOConnor!,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          frame1ItemModelObj.duration!,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomOutlinedButton(
                    width: 76.h,
                    text: "lbl_follow".tr,
                    margin: EdgeInsets.symmetric(vertical: 9.v),
                  ),
                ],
              ),
              SizedBox(height: 18.v),
              Container(
                width: 348.h,
                margin: EdgeInsets.only(right: 31.h),
                child: Text(
                  frame1ItemModelObj.introduceIAmA!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(right: 18.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img22,
                      height: 115.v,
                      width: 85.h,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img25,
                      height: 115.v,
                      width: 85.h,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img411,
                      height: 115.v,
                      width: 85.h,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img16,
                      height: 115.v,
                      width: 85.h,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavoriteDeepPurpleA200,
                    height: 17.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      frame1ItemModelObj.zipcode!,
                      style: CustomTextStyles.bodySmallDeeppurpleA200,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserDeepPurpleA200,
                    height: 18.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 7.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      frame1ItemModelObj.eightHundred!,
                      style: CustomTextStyles.bodySmallDeeppurpleA200,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsDeepPurpleA20025x54,
                    height: 25.v,
                    width: 54.h,
                  ),
                ],
              ),
              SizedBox(height: 17.v),
            ],
          ),
        ),
        SizedBox(height: 22.v),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse12,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 3.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          frame1ItemModelObj.albertOConnor1!,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          frame1ItemModelObj.duration1!,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomOutlinedButton(
                    width: 76.h,
                    text: "lbl_follow".tr,
                    margin: EdgeInsets.symmetric(vertical: 9.v),
                  ),
                ],
              ),
              SizedBox(height: 18.v),
              Container(
                width: 348.h,
                margin: EdgeInsets.only(right: 31.h),
                child: Text(
                  frame1ItemModelObj.introduceIAmA1!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 13.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 34.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img22,
                  height: 115.v,
                  width: 85.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img25,
                  height: 115.v,
                  width: 85.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(left: 8.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img411,
                  height: 115.v,
                  width: 85.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(left: 8.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img16,
                  height: 115.v,
                  width: 85.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(left: 8.h),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
