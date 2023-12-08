import '../chennai_tourist_spots_zoo_screen/widgets/widget_item_widget.dart';
import 'bloc/chennai_tourist_spots_zoo_bloc.dart';
import 'models/chennai_tourist_spots_zoo_model.dart';
import 'models/widget_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/app_bar/appbar_title_image.dart';
import 'package:wanderly/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wanderly/widgets/app_bar/custom_app_bar.dart';

class ChennaiTouristSpotsZooScreen extends StatelessWidget {
  const ChennaiTouristSpotsZooScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChennaiTouristSpotsZooBloc>(
        create: (context) => ChennaiTouristSpotsZooBloc(
            ChennaiTouristSpotsZooState(
                chennaiTouristSpotsZooModelObj: ChennaiTouristSpotsZooModel()))
          ..add(ChennaiTouristSpotsZooInitialEvent()),
        child: ChennaiTouristSpotsZooScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 28.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 14.h, right: 24.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("msg_arignar_anna_zoological".tr,
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 13.v),
                          _buildChennaiTouristSpotsZooWidget(context),
                          SizedBox(height: 28.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("lbl_history".tr,
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 5.v),
                          Container(
                              width: 315.h,
                              margin: EdgeInsets.only(left: 6.h),
                              child: Text("msg_the_arignar_anna".tr,
                                  maxLines: 8,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodySmallJungeLightblue700)),
                          SizedBox(height: 10.v),
                          Container(
                              width: 308.h,
                              margin: EdgeInsets.symmetric(horizontal: 6.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_address".tr,
                                        style: CustomTextStyles.bodySmallJunge),
                                    TextSpan(
                                        text: "msg_grand_southern".tr,
                                        style: CustomTextStyles.bodySmallJunge)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("lbl_map".tr,
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 14.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle33,
                              height: 191.v,
                              width: 321.h,
                              radius: BorderRadius.circular(10.h))
                        ]))))));
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
              AppbarTitleImage(imagePath: ImageConstant.imgRectangle2683x360),
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
              margin: EdgeInsets.fromLTRB(19.h, 18.v, 19.h, 25.v),
              onTap: () {
                onTapEqualizerThree(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildChennaiTouristSpotsZooWidget(BuildContext context) {
    return SizedBox(
        height: 191.v,
        width: 321.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          BlocBuilder<ChennaiTouristSpotsZooBloc, ChennaiTouristSpotsZooState>(
              builder: (context, state) {
            return CarouselSlider.builder(
                options: CarouselOptions(
                    height: 191.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      state.sliderIndex = index;
                    }),
                itemCount: state.chennaiTouristSpotsZooModelObj?.widgetItemList
                        .length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  WidgetItemModel model = state.chennaiTouristSpotsZooModelObj
                          ?.widgetItemList[index] ??
                      WidgetItemModel();
                  return WidgetItemWidget(model);
                });
          }),
          Align(
              alignment: Alignment.bottomLeft,
              child: BlocBuilder<ChennaiTouristSpotsZooBloc,
                  ChennaiTouristSpotsZooState>(builder: (context, state) {
                return Container(
                    height: 6.v,
                    margin: EdgeInsets.only(left: 119.h, bottom: 17.v),
                    child: AnimatedSmoothIndicator(
                        activeIndex: state.sliderIndex,
                        count: state.chennaiTouristSpotsZooModelObj
                                ?.widgetItemList.length ??
                            0,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: appTheme.whiteA700,
                            dotColor: appTheme.blueGray100,
                            dotHeight: 6.v,
                            dotWidth: 6.h)));
              }))
        ]));
  }

  /// Navigates to the chennaiTouristSpotsScreen when the action is triggered.
  onTapWanderlyFo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chennaiTouristSpotsScreen,
    );
  }

  /// Navigates to the wanderbotScreen when the action is triggered.
  onTapEqualizerThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wanderbotScreen,
    );
  }
}
