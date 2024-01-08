import 'models/walkthrough_model.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'provider/walkthrough_provider.dart';class WalkthroughScreen extends StatefulWidget {const WalkthroughScreen({Key? key}) : super(key: key);

@override WalkthroughScreenState createState() =>  WalkthroughScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => WalkthroughProvider(), child: WalkthroughScreen()); } 
 }
class WalkthroughScreenState extends State<WalkthroughScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: appTheme.whiteA700, image: DecorationImage(image: AssetImage(ImageConstant.imgWalkthrough), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [Spacer(), _buildAutoLayoutVertical(context)]))))); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 46.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL60), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: 376.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_listen_to_the_best2".tr, style: CustomTextStyles.displayMedium40_1), TextSpan(text: "lbl_tunecast_now".tr, style: CustomTextStyles.displayMediumOnPrimaryContainer)]), textAlign: TextAlign.center)), SizedBox(height: 39.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: theme.colorScheme.onPrimaryContainer, dotColor: theme.colorScheme.primaryContainer, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 40.v), CustomElevatedButton(text: "lbl_get_started".tr, onPressed: () {onTapGetStarted(context);})])); } 
/// Navigates to the letsYouInScreen when the action is triggered.
onTapGetStarted(BuildContext context) { NavigatorService.pushNamed(AppRoutes.letsYouInScreen, ); } 
 }
