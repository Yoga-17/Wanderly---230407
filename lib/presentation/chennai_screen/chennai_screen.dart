import 'bloc/chennai_bloc.dart';
import 'models/chennai_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/app_bar/appbar_title_image.dart';
import 'package:wanderly/widgets/app_bar/custom_app_bar.dart';
import 'package:wanderly/widgets/custom_text_form_field.dart';

class ChennaiScreen extends StatelessWidget {
  const ChennaiScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChennaiBloc>(
        create: (context) =>
            ChennaiBloc(ChennaiState(chennaiModelObj: ChennaiModel()))
              ..add(ChennaiInitialEvent()),
        child: ChennaiScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 13.h, right: 10.h),
                        child: Column(children: [
                          BlocSelector<ChennaiBloc, ChennaiState,
                                  TextEditingController?>(
                              selector: (state) => state.priceController,
                              builder: (context, priceController) {
                                return CustomTextFormField(
                                    controller: priceController,
                                    hintText: "lbl_chennai2".tr,
                                    hintStyle: CustomTextStyles.bodyLargeJunge,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            14.h, 8.v, 12.h, 10.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocationarrow,
                                            height: 22.adaptSize,
                                            width: 22.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 40.v),
                                    contentPadding: EdgeInsets.only(
                                        top: 9.v, right: 30.h, bottom: 9.v),
                                    borderDecoration: TextFormFieldStyleHelper
                                        .fillLightBlueTL20,
                                    fillColor: appTheme.lightBlue700);
                              }),
                          SizedBox(height: 20.v),
                          GestureDetector(
                              onTap: () {
                                onTapBookReader(context);
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 17.h, vertical: 11.v),
                                  decoration: AppDecoration.fillLightBlue
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder22),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBookReader,
                                            height: 38.adaptSize,
                                            width: 38.adaptSize,
                                            margin: EdgeInsets.only(
                                                top: 6.v, bottom: 9.v)),
                                        Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                                width: 95.h,
                                                margin: EdgeInsets.only(
                                                    left: 9.h,
                                                    top: 1.v,
                                                    right: 16.h),
                                                child: Text(
                                                    "msg_insider_s_itinerary2"
                                                        .tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleLargeLuxuriousRomanWhiteA700)))
                                      ]))),
                          SizedBox(height: 27.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_chennai_s_top_tourist".tr,
                                  style: theme.textTheme.titleLarge)),
                          SizedBox(height: 3.v),
                          _buildArrowRightStack(context,
                              image: ImageConstant.imgRectangle19,
                              onTapArrowRight: () {
                            onTapArrowRight(context);
                          }),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_best_dining_spots".tr,
                                  style: theme.textTheme.titleLarge)),
                          SizedBox(height: 3.v),
                          _buildArrowRightStack(context,
                              image: ImageConstant.imgRectangle20,
                              onTapArrowRight: () {
                            onTapArrowRight1(context);
                          }),
                          SizedBox(height: 9.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_chennai_travel_tips".tr,
                                  style: theme.textTheme.titleLarge)),
                          SizedBox(height: 3.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle21,
                              height: 184.v,
                              width: 331.h)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 82.v,
        centerTitle: true,
        title: SizedBox(
            height: 82.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              Container(
                  height: 70.v,
                  width: 304.h,
                  margin: EdgeInsets.only(left: 8.h, right: 48.h, bottom: 12.v),
                  child: Stack(alignment: Alignment.topLeft, children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgWanderly32,
                        margin: EdgeInsets.only(left: 45.h)),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgWanderly1Fo,
                        margin: EdgeInsets.only(
                            top: 11.v, right: 257.h, bottom: 19.v)),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgWanderly32,
                        margin: EdgeInsets.only(left: 45.h)),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgWanderly1Fo,
                        margin: EdgeInsets.fromLTRB(16.h, 17.v, 241.h, 13.v),
                        onTap: () {
                          onTapWanderlyFo(context);
                        })
                  ])),
              AppbarTitleImage(imagePath: ImageConstant.imgRectangle25)
            ])),
        actions: [
          Container(
              height: 44.v,
              width: 40.h,
              margin: EdgeInsets.fromLTRB(20.h, 13.v, 20.h, 25.v),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEqualizer2,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(bottom: 4.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgEqualizer2,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 4.v),
                    onTap: () {
                      onTapImgEqualizerTwo(context);
                    })
              ]))
        ]);
  }

  /// Common widget
  Widget _buildArrowRightStack(
    BuildContext context, {
    required String image,
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
              alignment: Alignment.center),
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

  /// Navigates to the homeScreen when the action is triggered.
  onTapWanderlyFo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the wanderbotScreen when the action is triggered.
  onTapImgEqualizerTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wanderbotScreen,
    );
  }

  /// Navigates to the chennaiInsiderScreen when the action is triggered.
  onTapBookReader(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiInsiderScreen,
    );
  }

  /// Navigates to the chennaiTouristSpotsScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsScreen,
    );
  }

  /// Navigates to the chennaiTouristSpotsScreen when the action is triggered.
  onTapArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsScreen,
    );
  }
}
