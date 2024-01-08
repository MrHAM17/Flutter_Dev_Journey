import '../type_comments_bottomsheet/widgets/typecomments_item_widget.dart';
import 'models/type_comments_model.dart';
import 'models/typecomments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';
import 'provider/type_comments_provider.dart';

// ignore_for_file: must_be_immutable
class TypeCommentsBottomsheet extends StatefulWidget {
  const TypeCommentsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  TypeCommentsBottomsheetState createState() => TypeCommentsBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TypeCommentsProvider(),
      child: TypeCommentsBottomsheet(),
    );
  }
}

class TypeCommentsBottomsheetState extends State<TypeCommentsBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 24.v),
          Text(
            "lbl_24_8k_comments".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 23.v),
          Divider(
            indent: 24.h,
            endIndent: 24.h,
          ),
          SizedBox(height: 23.v),
          _buildTypeComments(context),
          SizedBox(height: 23.v),
          _buildAutoLayoutHorizontal(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeComments(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer<TypeCommentsProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount:
                provider.typeCommentsModelObj.typecommentsItemList.length,
            itemBuilder: (context, index) {
              TypecommentsItemModel model =
                  provider.typeCommentsModelObj.typecommentsItemList[index];
              return TypecommentsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineGray1001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Selector<TypeCommentsProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.categoriesGiftComponentAdditioController,
              builder:
                  (context, categoriesGiftComponentAdditioController, child) {
                return CustomTextFormField(
                  controller: categoriesGiftComponentAdditioController,
                  hintText: "msg_you_re_so_adorable".tr,
                  hintStyle: CustomTextStyles.titleSmallPrimary,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 18.v, 18.h, 18.v),
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgCategoriesgiftComponentadditionalIconsPrimary,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 56.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 18.h,
                    top: 19.v,
                    bottom: 19.v,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.gradientDeepOrangeAToOrange,
              child: CustomImageView(
                imagePath:
                    ImageConstant.imgAutoLayoutHorizontalOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
