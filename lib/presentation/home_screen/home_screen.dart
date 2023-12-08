import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/custom_search_view.dart';
import 'package:wanderly/widgets/custom_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgWanderly5Fo,
                      height: 72.v,
                      width: 67.h),
                  SizedBox(height: 40.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("msg_start_wandering".tr,
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 35.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 4.h),
                      child: BlocSelector<HomeBloc, HomeState,
                              TextEditingController?>(
                          selector: (state) => state.locationController,
                          builder: (context, locationController) {
                            return CustomTextFormField(
                                controller: locationController,
                                hintText: "msg_auto_detect_my_location".tr,
                                hintStyle: theme.textTheme.bodyMedium!,
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        19.h, 10.v, 10.h, 14.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgMappin,
                                        height: 24.v,
                                        width: 29.h)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 48.v));
                          })),
                  SizedBox(height: 17.v),
                  Text("lbl_or".tr, style: CustomTextStyles.titleLargeInter),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 4.h),
                      child: BlocSelector<HomeBloc, HomeState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search_city".tr);
                          })),
                  SizedBox(height: 51.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_popular_cities".tr,
                          style: CustomTextStyles.titleLargeInter)),
                  SizedBox(height: 24.v),
                  _buildTempleOne1(context),
                  SizedBox(height: 18.v),
                  _buildKolkata(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildTempleOne1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildBangaloreTwentyOne(context,
              bangaloreTwentyOne: ImageConstant.imgTemple1,
              bangalore: "lbl_chennai".tr, onTapBangaloreTwentyOne: () {
            onTapTempleOne(context);
          }),
          _buildBangaloreTwentyOne(context,
              bangaloreTwentyOne: ImageConstant.imgBangalore21,
              bangalore: "lbl_bangalore".tr),
          _buildMumbaiTwentyOne(context,
              mumbaiTwentyOne: ImageConstant.imgIndiaGate1,
              pune: "lbl_delhi".tr),
          _buildMumbaiEleven(context,
              mumbaiEleven: ImageConstant.imgHyderabadCharminar,
              mumbai: "lbl_hyderabad".tr)
        ]));
  }

  /// Section Widget
  Widget _buildKolkata(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 76.v,
              width: 73.h,
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.v),
              decoration: AppDecoration.fillLightblue700,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 5.h, bottom: 5.v),
                        child: Text("lbl_kolkata".tr,
                            style: theme.textTheme.bodySmall))),
                CustomImageView(
                    imagePath: ImageConstant.imgKolkata1,
                    height: 59.v,
                    width: 57.h,
                    alignment: Alignment.topCenter)
              ])),
          _buildBangaloreTwentyOne(context,
              bangaloreTwentyOne: ImageConstant.imgBeach1,
              bangalore: "lbl_kochi".tr),
          _buildMumbaiTwentyOne(context,
              mumbaiTwentyOne: ImageConstant.imgMumbai21, pune: "lbl_pune".tr),
          _buildMumbaiEleven(context,
              mumbaiEleven: ImageConstant.imgMumbai11, mumbai: "lbl_mumbai".tr)
        ]));
  }

  /// Common widget
  Widget _buildBangaloreTwentyOne(
    BuildContext context, {
    required String bangaloreTwentyOne,
    required String bangalore,
    Function? onTapBangaloreTwentyOne,
  }) {
    return GestureDetector(
        onTap: () {
          onTapBangaloreTwentyOne!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 5.v),
            decoration: AppDecoration.fillLightblue700,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      imagePath: bangaloreTwentyOne,
                      height: 48.v,
                      width: 41.h,
                      margin: EdgeInsets.only(left: 9.h)),
                  SizedBox(height: 1.v),
                  Text(bangalore,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.indigo900)),
                  SizedBox(height: 1.v)
                ])));
  }

  /// Common widget
  Widget _buildMumbaiTwentyOne(
    BuildContext context, {
    required String mumbaiTwentyOne,
    required String pune,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
        decoration: AppDecoration.fillLightblue700,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomImageView(
                  imagePath: mumbaiTwentyOne, height: 41.v, width: 40.h),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(pune,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.indigo900)))
            ]));
  }

  /// Common widget
  Widget _buildMumbaiEleven(
    BuildContext context, {
    required String mumbaiEleven,
    required String mumbai,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 7.v),
        decoration: AppDecoration.fillLightblue700,
        child: Column(children: [
          CustomImageView(imagePath: mumbaiEleven, height: 42.v, width: 40.h),
          SizedBox(height: 4.v),
          Align(
              alignment: Alignment.centerRight,
              child: Text(mumbai,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.indigo900)))
        ]));
  }

  /// Navigates to the chennaiScreen when the action is triggered.
  onTapTempleOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiScreen,
    );
  }
}
