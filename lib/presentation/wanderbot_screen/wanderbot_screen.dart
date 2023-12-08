import 'bloc/wanderbot_bloc.dart';
import 'models/wanderbot_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/app_bar/appbar_title_image.dart';
import 'package:wanderly/widgets/app_bar/custom_app_bar.dart';
import 'package:wanderly/widgets/custom_text_form_field.dart';

class WanderbotScreen extends StatelessWidget {
  const WanderbotScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WanderbotBloc>(
        create: (context) =>
            WanderbotBloc(WanderbotState(wanderbotModelObj: WanderbotModel()))
              ..add(WanderbotInitialEvent()),
        child: WanderbotScreen());
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
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_wanderbot".tr,
                              style: theme.textTheme.displaySmall)),
                      Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imgSoundWaveMusi,
                          height: 150.v,
                          width: 360.h),
                      SizedBox(height: 95.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse5,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                radius: BorderRadius.circular(15.h),
                                margin: EdgeInsets.only(top: 5.v, bottom: 4.v)),
                            Container(
                                width: 155.h,
                                margin: EdgeInsets.only(left: 10.h),
                                child: Text("msg_hello_this_is_wanderbot".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.labelMedium!
                                        .copyWith(height: 1.20)))
                          ])),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 26.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse6,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        radius: BorderRadius.circular(15.h)),
                                    Container(
                                        width: 149.h,
                                        margin: EdgeInsets.only(
                                            left: 9.h, top: 4.v),
                                        child: Text("msg_help_me_to_plan".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelMediumIndigo900
                                                .copyWith(height: 1.20)))
                                  ]))),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse5,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    radius: BorderRadius.circular(15.h),
                                    margin: EdgeInsets.only(bottom: 4.v)),
                                Container(
                                    width: 180.h,
                                    margin:
                                        EdgeInsets.only(left: 10.h, top: 6.v),
                                    child: Text("msg_sure_check_out".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(height: 1.20)))
                              ])),
                      SizedBox(height: 20.v)
                    ])),
            bottomNavigationBar: _buildPlaceholderText(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 82.v,
        centerTitle: true,
        title: SizedBox(
            height: 82.v,
            width: double.maxFinite,
            child: Stack(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgRectangle18),
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
                            top: 11.v, right: 257.h, bottom: 19.v),
                        onTap: () {
                          onTapWanderlyFo(context);
                        })
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildPlaceholderText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 7.h, bottom: 9.v),
        child:
            BlocSelector<WanderbotBloc, WanderbotState, TextEditingController?>(
                selector: (state) => state.placeholderTextController,
                builder: (context, placeholderTextController) {
                  return CustomTextFormField(
                      controller: placeholderTextController,
                      hintText: "msg_clear_your_queries".tr,
                      textInputAction: TextInputAction.done,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 6.h, vertical: 9.v));
                }));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapWanderlyFo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
