import 'bloc/chennai_insider_bloc.dart';
import 'models/chennai_insider_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/app_bar/appbar_leading_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_title_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wanderly/widgets/app_bar/custom_app_bar.dart';
import 'package:wanderly/widgets/custom_elevated_button.dart';
import 'package:wanderly/widgets/custom_text_form_field.dart';

class ChennaiInsiderScreen extends StatelessWidget {
  const ChennaiInsiderScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChennaiInsiderBloc>(
        create: (context) => ChennaiInsiderBloc(
            ChennaiInsiderState(chennaiInsiderModelObj: ChennaiInsiderModel()))
          ..add(ChennaiInsiderInitialEvent()),
        child: ChennaiInsiderScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
                child: Column(children: [
                  Text("msg_insider_s_itinerary".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 4.v),
                  Text("msg_a_guided_itinerary".tr,
                      style: CustomTextStyles.bodySmallKameronLightblue700),
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 559.v,
                      width: 315.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 146.v,
                                width: 49.h,
                                margin: EdgeInsets.only(top: 136.v),
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray100))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.only(right: 6.h),
                                padding: EdgeInsets.all(11.h),
                                decoration: AppDecoration.fillLightBlue
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder38),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 23.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 7.h),
                                          child: Text("lbl_choose_plan".tr,
                                              style: CustomTextStyles
                                                  .titleLargeJuliusSansOneWhiteA700)),
                                      SizedBox(height: 21.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 4.v, bottom: 6.v),
                                                    decoration: AppDecoration
                                                        .fillWhiteA
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder5),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheck,
                                                        height: 9.adaptSize,
                                                        width: 9.adaptSize,
                                                        alignment: Alignment
                                                            .bottomRight)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: Text(
                                                        "lbl_two_day_plan".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 3.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5.v),
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .blueGray100,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: Text(
                                                        "lbl_five_day_plan".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 4.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5.v),
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .blueGray100,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: Text(
                                                        "lbl_seven_day_plan".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 4.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 4.v, bottom: 6.v),
                                                    decoration: AppDecoration
                                                        .fillBlueGray
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder5),
                                                    child: Container(
                                                        height: 10.adaptSize,
                                                        width: 10.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray100,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.h)))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: Text(
                                                        "lbl_ten_day_plan".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 37.v),
                                      Text("msg_choose_preferences".tr,
                                          style: CustomTextStyles
                                              .titleLargeJuliusSansOneWhiteA700),
                                      SizedBox(height: 20.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5.v),
                                                    decoration: AppDecoration
                                                        .fillWhiteA
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder5),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheck,
                                                        height: 9.adaptSize,
                                                        width: 9.adaptSize,
                                                        alignment: Alignment
                                                            .bottomRight)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: Text(
                                                        "msg_top_tourists_spots"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 4.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5.v),
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .blueGray100,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: Text(
                                                        "msg_best_dining_spots2"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 2.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Row(children: [
                                            Container(
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 6.v, bottom: 4.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Text("lbl_beaches".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ])),
                                      SizedBox(height: 5.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5.v),
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .blueGray100,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: Text(
                                                        "msg_top_adventure_spots"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 5.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 12.h, right: 18.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: 10.adaptSize,
                                                        width: 10.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 3.v,
                                                            bottom: 7.v),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray100,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.h))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.h),
                                                        child: Text(
                                                            "msg_best_spots_for_nature"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge))
                                                  ]))),
                                      SizedBox(height: 38.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Text(
                                              "msg_enter_area_of_residence".tr,
                                              style: CustomTextStyles
                                                  .titleLargeJuliusSansOneWhiteA700)),
                                      SizedBox(height: 18.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, right: 26.h),
                                          child: BlocSelector<
                                                  ChennaiInsiderBloc,
                                                  ChennaiInsiderState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.annaNagarController,
                                              builder: (context,
                                                  annaNagarController) {
                                                return CustomTextFormField(
                                                    controller:
                                                        annaNagarController,
                                                    hintText:
                                                        "lbl_anna_nagar".tr,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 14.h,
                                                            vertical: 9.v),
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .fillWhiteA);
                                              })),
                                      SizedBox(height: 38.v),
                                      CustomElevatedButton(
                                          height: 22.v,
                                          width: 128.h,
                                          text: "lbl_confirm".tr,
                                          margin: EdgeInsets.only(left: 73.h),
                                          buttonStyle:
                                              CustomButtonStyles.fillWhiteA,
                                          buttonTextStyle: CustomTextStyles
                                              .bodyMediumLightblue700,
                                          onPressed: () {
                                            onTapConfirm(context);
                                          })
                                    ])))
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgWanderly1Fo,
            margin: EdgeInsets.only(left: 6.h, top: 11.v, bottom: 19.v),
            onTap: () {
              onTapWanderlyFo(context);
            }),
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgWanderly32),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEqualizer2,
              margin: EdgeInsets.only(top: 11.v, right: 8.h, bottom: 19.v),
              onTap: () {
                onTapEqualizerTwo(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Navigates to the chennaiScreen when the action is triggered.
  onTapWanderlyFo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiScreen,
    );
  }

  /// Navigates to the wanderbotScreen when the action is triggered.
  onTapEqualizerTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wanderbotScreen,
    );
  }

  /// Navigates to the chennaiInsiderDayPlanScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiInsiderDayPlanScreen,
    );
  }
}
