import 'models/add_new_education_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_11_hired___job_search/widgets/custom_drop_down.dart';
import 'package:the_5_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_5_11_hired___job_search/widgets/custom_text_form_field.dart';
import 'provider/add_new_education_provider.dart';

class AddNewEducationScreen extends StatefulWidget {
  const AddNewEducationScreen({Key? key}) : super(key: key);

  @override
  AddNewEducationScreenState createState() => AddNewEducationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddNewEducationProvider(),
        child: AddNewEducationScreen());
  }
}

class AddNewEducationScreenState extends State<AddNewEducationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 32.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_school".tr,
                                        style: theme.textTheme.titleSmall)),
                                SizedBox(height: 9.v),
                                Selector<AddNewEducationProvider,
                                        TextEditingController?>(
                                    selector: (context, provider) =>
                                        provider.frameOneController,
                                    builder:
                                        (context, frameOneController, child) {
                                      return CustomTextFormField(
                                          controller: frameOneController,
                                          hintText:
                                              "msg_ex_harvard_university".tr);
                                    }),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD(context),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD1(context),
                                SizedBox(height: 18.v),
                                _buildInputfield(context,
                                    mediumLabelSemi: "lbl_start_date".tr,
                                    smallLabelRegular: "lbl_select_date".tr,
                                    onTapFrameOne: () {
                                  onTapFrameOne(context);
                                }),
                                SizedBox(height: 18.v),
                                _buildInputfield(context,
                                    mediumLabelSemi: "lbl_end_date".tr,
                                    smallLabelRegular: "lbl_select_date".tr,
                                    onTapFrameOne: () {
                                  onTapFrameOne1(context);
                                }),
                                SizedBox(height: 18.v),
                                _buildINPUTFIELD4(context),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD5(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_add_new_education".tr));
  }

  /// Section Widget
  Widget _buildINPUTFIELD(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_degree".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      Selector<AddNewEducationProvider, AddNewEducationModel?>(
          selector: (context, provider) => provider.addNewEducationModelObj,
          builder: (context, addNewEducationModelObj, child) {
            return CustomDropDown(
                hintText: "lbl_ex_bachelor".tr,
                items: addNewEducationModelObj?.dropdownItemList ?? [],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                onChanged: (value) {
                  context.read<AddNewEducationProvider>().onSelected(value);
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_field_of_study".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      Selector<AddNewEducationProvider, TextEditingController?>(
          selector: (context, provider) => provider.frameOneController1,
          builder: (context, frameOneController1, child) {
            return CustomTextFormField(
                controller: frameOneController1,
                hintText: "lbl_ex_business".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_grade".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      Selector<AddNewEducationProvider, TextEditingController?>(
          selector: (context, provider) => provider.frameOneController2,
          builder: (context, frameOneController2, child) {
            return CustomTextFormField(
                controller: frameOneController2,
                hintText: "lbl_ex_business".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD5(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_description".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      Selector<AddNewEducationProvider, TextEditingController?>(
          selector: (context, provider) => provider.frameOneController3,
          builder: (context, frameOneController3, child) {
            return CustomTextFormField(
                controller: frameOneController3,
                hintText: "lbl_lorem_ipsun".tr,
                textInputAction: TextInputAction.done,
                maxLines: 6,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v));
          })
    ]);
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v),
        onPressed: () {
          onTapSaveChanges(context);
        });
  }

  /// Common widget
  Widget _buildInputfield(
    BuildContext context, {
    required String mediumLabelSemi,
    required String smallLabelRegular,
    Function? onTapFrameOne,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(mediumLabelSemi,
          style: theme.textTheme.titleSmall!
              .copyWith(color: theme.colorScheme.primary)),
      SizedBox(height: 9.v),
      GestureDetector(
          onTap: () {
            onTapFrameOne!.call();
          },
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(smallLabelRegular,
                            style: CustomTextStyles.titleMediumBluegray400
                                .copyWith(color: appTheme.blueGray400))),
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 24.adaptSize,
                        width: 24.adaptSize)
                  ])))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [addNewEducationModelObj] object of the current [smallLabelRegular] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
        context: context!,
        initialDate: Provider.of<AddNewEducationProvider>(context)
                .addNewEducationModelObj
                .selectedSmallLabelRegular ??
            DateTime.now() ??
            DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      Provider.of<AddNewEducationProvider>(context)
          .addNewEducationModelObj
          .selectedSmallLabelRegular = dateTime;
      Provider.of<AddNewEducationProvider>(context)
          .addNewEducationModelObj
          .smallLabelRegular = dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [addNewEducationModelObj] object of the current [smallLabelRegular1] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne1(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
        context: context!,
        initialDate: Provider.of<AddNewEducationProvider>(context)
                .addNewEducationModelObj
                .selectedSmallLabelRegular1 ??
            DateTime.now() ??
            DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      Provider.of<AddNewEducationProvider>(context)
          .addNewEducationModelObj
          .selectedSmallLabelRegular1 = dateTime;
      Provider.of<AddNewEducationProvider>(context)
          .addNewEducationModelObj
          .smallLabelRegular1 = dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Navigates to the experienceSettingScreen when the action is triggered.
  onTapSaveChanges(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }
}
