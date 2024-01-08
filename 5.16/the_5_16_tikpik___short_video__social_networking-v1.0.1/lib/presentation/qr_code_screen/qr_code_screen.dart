import 'models/qr_code_model.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';
import 'provider/qr_code_provider.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  QrCodeScreenState createState() => QrCodeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QrCodeProvider(),
      child: QrCodeScreen(),
    );
  }
}

class QrCodeScreenState extends State<QrCodeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, 1),
              end: Alignment(0, 0),
              colors: [
                appTheme.deepOrangeA400,
                appTheme.orange600,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 29.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 64.h),
                  padding: EdgeInsets.all(18.h),
                  decoration: AppDecoration.fillOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder22,
                  ),
                  child: QrImageView(
                    data: 'https://www.google.com',
                    size: 262.adaptSize,
                  ),
                ),
                SizedBox(height: 22.v),
                Text(
                  "lbl_andrew_ainsley3".tr,
                  style: CustomTextStyles.headlineSmallOnErrorContainer,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildScanQRCode(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScanQRCode(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_scan_qr_code".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 48.v,
      ),
      buttonStyle: CustomButtonStyles.fillDeepOrange,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
    );
  }
}
