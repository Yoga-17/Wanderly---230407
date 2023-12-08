import 'bloc/chennai_insider_day_plan_bloc.dart';
import 'models/chennai_insider_day_plan_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/app_bar/appbar_leading_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_title_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wanderly/widgets/app_bar/custom_app_bar.dart';

class ChennaiInsiderDayPlanScreen extends StatelessWidget {
  const ChennaiInsiderDayPlanScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChennaiInsiderDayPlanBloc>(
        create: (context) => ChennaiInsiderDayPlanBloc(
            ChennaiInsiderDayPlanState(
                chennaiInsiderDayPlanModelObj: ChennaiInsiderDayPlanModel()))
          ..add(ChennaiInsiderDayPlanInitialEvent()),
        child: ChennaiInsiderDayPlanScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ChennaiInsiderDayPlanBloc, ChennaiInsiderDayPlanState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 18.v),
                      child: Column(children: [
                        Text("msg_insider_s_itinerary".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 4.v),
                        Text("msg_a_guided_itinerary".tr,
                            style:
                                CustomTextStyles.bodySmallKameronLightblue700),
                        SizedBox(height: 21.v),
                        SizedBox(
                            height: 717.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6.v),
                                          decoration: AppDecoration
                                              .fillLightBlue
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder38),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 23.v),
                                                Text("lbl_3_day_plan".tr,
                                                    style: CustomTextStyles
                                                        .titleLargeJuliusSansOneWhiteA700),
                                                SizedBox(height: 25.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.h),
                                                        child: Text(
                                                            "lbl_day_1".tr,
                                                            style: CustomTextStyles
                                                                .titleLargeJuliusSansOneWhiteA700))),
                                                SizedBox(height: 21.v),
                                                SizedBox(
                                                    height: 502.v,
                                                    width: double.maxFinite,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                  width: 348.h,
                                                                  child: Text(
                                                                      "msg_8_00am_9_00am"
                                                                          .tr,
                                                                      maxLines:
                                                                          24,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyLarge))),
                                                          _buildDayPlanDescriptionArrowRight(
                                                              context)
                                                        ]))
                                              ]))),
                                  _buildDayPlanArrowRight(context),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle36,
                                      height: 95.v,
                                      width: 360.h,
                                      alignment: Alignment.bottomCenter,
                                      margin: EdgeInsets.only(bottom: 68.v)),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                          height: 163.v,
                                          width: 51.h,
                                          margin: EdgeInsets.only(right: 1.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.h, vertical: 68.v),
                                          decoration:
                                              AppDecoration.fillBlueGray,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowRight,
                                              height: 27.v,
                                              width: 25.h,
                                              alignment: Alignment.centerRight,
                                              onTap: () {
                                                onTapImgArrowRight2(context);
                                              })))
                                ]))
                      ])))));
    });
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

  /// Section Widget
  Widget _buildDayPlanDescriptionArrowRight(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 146.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 28.v),
            child: Stack(alignment: Alignment.centerRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle35,
                  height: 146.v,
                  width: 360.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: 146.v,
                      width: 52.h,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 27.v,
                            width: 25.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 56.v),
                            onTap: () {
                              onTapImgArrowRight(context);
                            }),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 146.v,
                                width: 52.h,
                                decoration:
                                    BoxDecoration(color: appTheme.blueGray100)))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildDayPlanArrowRight(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 167.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 207.v),
            child: Stack(alignment: Alignment.centerRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 167.v,
                  width: 360.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: 163.v,
                      width: 48.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.h, vertical: 68.v),
                      decoration: AppDecoration.fillBlueGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 27.v,
                          width: 25.h,
                          alignment: Alignment.centerRight,
                          onTap: () {
                            onTapImgArrowRight1(context);
                          })))
            ])));
  }

  /// Navigates to the chennaiInsiderScreen when the action is triggered.
  onTapWanderlyFo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiInsiderScreen,
    );
  }

  /// Navigates to the wanderbotScreen when the action is triggered.
  onTapEqualizerTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wanderbotScreen,
    );
  }

  /// Navigates to the chennaiTouristSpotsScreen when the action is triggered.
  onTapImgArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsScreen,
    );
  }

  /// Navigates to the chennaiTouristSpotsScreen when the action is triggered.
  onTapImgArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsScreen,
    );
  }

  /// Navigates to the chennaiTouristSpotsScreen when the action is triggered.
  onTapImgArrowRight2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsScreen,
    );
  }
}
