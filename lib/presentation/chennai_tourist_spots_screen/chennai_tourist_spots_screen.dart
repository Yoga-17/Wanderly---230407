import 'bloc/chennai_tourist_spots_bloc.dart';
import 'models/chennai_tourist_spots_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/app_bar/appbar_title_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wanderly/widgets/app_bar/custom_app_bar.dart';

class ChennaiTouristSpotsScreen extends StatelessWidget {
  const ChennaiTouristSpotsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChennaiTouristSpotsBloc>(
        create: (context) => ChennaiTouristSpotsBloc(ChennaiTouristSpotsState(
            chennaiTouristSpotsModelObj: ChennaiTouristSpotsModel()))
          ..add(ChennaiTouristSpotsInitialEvent()),
        child: ChennaiTouristSpotsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ChennaiTouristSpotsBloc, ChennaiTouristSpotsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: mediaQueryData.size.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 29.v),
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          child: Column(children: [
                            Text("msg_chennai_s_top_tourist".tr,
                                style: CustomTextStyles.headlineSmallJunge),
                            SizedBox(height: 49.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("msg_arignar_anna_zoological".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 18.v),
                            _buildChennaiTouristSpotsArrowRight(context,
                                image: ImageConstant.imgRectangle26147x331,
                                onTapImage: () {
                              onTapImage(context);
                            }),
                            SizedBox(height: 16.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_elliot_s_beach".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 11.v),
                            _buildChennaiTouristSpotsArrowRight(context,
                                image: ImageConstant.imgRectangle27),
                            SizedBox(height: 16.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_santhome_church".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 11.v),
                            _buildChennaiTouristSpotsArrowRight(context,
                                image: ImageConstant.imgRectangle29,
                                onTapArrowRight: () {
                              onTapArrowRight(context);
                            })
                          ]))))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 83.v,
        centerTitle: true,
        title: SizedBox(
            height: 83.v,
            width: double.maxFinite,
            child: Stack(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgRectangle26),
              Container(
                  height: 72.v,
                  width: 293.h,
                  margin:
                      EdgeInsets.only(left: 16.h, right: 51.h, bottom: 11.v),
                  child: Stack(alignment: Alignment.center, children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgWanderly34,
                        margin: EdgeInsets.only(left: 34.h)),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgWanderly1Fo,
                        margin: EdgeInsets.only(
                            top: 18.v, right: 246.h, bottom: 14.v),
                        onTap: () {
                          onTapWanderlyFo(context);
                        })
                  ]))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEqualizer2,
              margin: EdgeInsets.fromLTRB(19.h, 18.v, 19.h, 25.v))
        ]);
  }

  /// Common widget
  Widget _buildChennaiTouristSpotsArrowRight(
    BuildContext context, {
    required String image,
    Function? onTapImage,
    Function? onTapArrowRight,
  }) {
    return SizedBox(
        height: 147.v,
        width: 331.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: image,
              height: 147.v,
              width: 331.h,
              radius: BorderRadius.circular(22.h),
              alignment: Alignment.center,
              onTap: () {
                onTapImage!.call();
              }),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 146.v,
                  width: 49.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.h, vertical: 61.v),
                  decoration: AppDecoration.fillBlueGray,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerRight,
                      onTap: () {
                        onTapArrowRight!.call();
                      })))
        ]));
  }

  /// Navigates to the chennaiScreen when the action is triggered.
  onTapWanderlyFo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiScreen,
    );
  }

  /// Navigates to the chennaiTouristSpotsZooScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsZooScreen,
    );
  }

  /// Navigates to the chennaiTouristSpotsChurchScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsChurchScreen,
    );
  }
}
