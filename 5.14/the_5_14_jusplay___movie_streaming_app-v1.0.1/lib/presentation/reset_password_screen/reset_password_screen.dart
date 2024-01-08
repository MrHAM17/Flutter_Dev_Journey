import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/utils/validation_functions.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';
import 'provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ResetPasswordProvider(),
        child: ResetPasswordScreen());
  }
}

// ignore_for_file: must_be_immutable
class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_reset_password".tr,
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  SizedBox(height: 12.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: 328.h,
                                          margin: EdgeInsets.only(right: 14.h),
                                          child: Text(
                                              "msg_please_enter_your".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodyMedium!
                                                  .copyWith(height: 1.50)))),
                                  SizedBox(height: 46.v),
                                  Consumer<ResetPasswordProvider>(
                                      builder: (context, provider, child) {
                                    return CustomTextFormField(
                                        controller: provider.passwordController,
                                        hintText: "lbl_password".tr,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              provider
                                                  .changePasswordVisibility();
                                            },
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 30.h,
                                                    right: 20.h,
                                                    bottom: 18.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgEye,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 42.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: provider.isShowPassword);
                                  }),
                                  SizedBox(height: 29.v),
                                  Consumer<ResetPasswordProvider>(
                                      builder: (context, provider, child) {
                                    return CustomTextFormField(
                                        controller:
                                            provider.newpasswordController,
                                        hintText: "msg_confirm_new_password".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              provider
                                                  .changePasswordVisibility1();
                                            },
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 30.h,
                                                    right: 20.h,
                                                    bottom: 18.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgEye,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 42.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: provider.isShowPassword1);
                                  }),
                                  SizedBox(height: 31.v),
                                  CustomElevatedButton(
                                      text: "lbl_reset_password2".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                      onPressed: () {
                                        onTapResetPassword(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the resetPasswordSuccessScreen when the action is triggered.
  onTapResetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordSuccessScreen,
    );
  }
}
