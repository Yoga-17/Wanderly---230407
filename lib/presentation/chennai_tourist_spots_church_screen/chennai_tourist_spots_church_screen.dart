import 'bloc/chennai_tourist_spots_church_bloc.dart';
import 'models/chennai_tourist_spots_church_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/app_bar/appbar_leading_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_title_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wanderly/widgets/app_bar/custom_app_bar.dart';

class ChennaiTouristSpotsChurchScreen extends StatelessWidget {
  const ChennaiTouristSpotsChurchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChennaiTouristSpotsChurchBloc>(
        create: (context) => ChennaiTouristSpotsChurchBloc(
            ChennaiTouristSpotsChurchState(
                chennaiTouristSpotsChurchModelObj:
                    ChennaiTouristSpotsChurchModel()))
          ..add(ChennaiTouristSpotsChurchInitialEvent()),
        child: ChennaiTouristSpotsChurchScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ChennaiTouristSpotsChurchBloc,
        ChennaiTouristSpotsChurchState>(builder: (context, state) {
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
                            height: 651.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: appTheme.lightBlue700,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder38),
                                          child: Container(
                                              height: 619.v,
                                              width: double.maxFinite,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 13.v),
                                              decoration: AppDecoration
                                                  .fillLightBlue
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder38),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            width: 328.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 7.h),
                                                            child: Text(
                                                                "msg_11_30pm_12_30am"
                                                                    .tr,
                                                                maxLines: 23,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 33.v),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  _buildArrowRight(
                                                                      context),
                                                                  SizedBox(
                                                                      height:
                                                                          55.v),
                                                                  _buildArrowRight1(
                                                                      context)
                                                                ])))
                                                  ])))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle39,
                                      height: 131.v,
                                      width: 360.h,
                                      alignment: Alignment.bottomCenter,
                                      margin: EdgeInsets.only(bottom: 32.v)),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                          height: 163.v,
                                          width: 50.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.h, vertical: 55.v),
                                          decoration:
                                              AppDecoration.fillBlueGray,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowRight,
                                              height: 27.v,
                                              width: 25.h,
                                              alignment: Alignment.bottomRight,
                                              onTap: () {
                                                onTapImgArrowRight1(context);
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
  Widget _buildArrowRight(BuildContext context) {
    return SizedBox(
        height: 169.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle34,
              height: 169.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 169.v,
                  width: 39.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.h, vertical: 71.v),
                  decoration: AppDecoration.fillBlueGray,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 27.v,
                      width: 25.h,
                      alignment: Alignment.centerLeft)))
        ]));
  }

  /// Section Widget
  Widget _buildArrowRight1(BuildContext context) {
    return SizedBox(
        height: 170.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle38,
              height: 170.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 170.v,
                  width: 50.h,
                  padding: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 62.v),
                  decoration: AppDecoration.fillBlueGray,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 27.v,
                        width: 25.h,
                        alignment: Alignment.bottomRight,
                        onTap: () {
                          onTapImgArrowRight(context);
                        }),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 27.v,
                        width: 25.h,
                        alignment: Alignment.bottomRight)
                  ])))
        ]));
  }

  /// Navigates to the chennaiTouristSpotsScreen when the action is triggered.
  onTapWanderlyFo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsScreen,
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
}
