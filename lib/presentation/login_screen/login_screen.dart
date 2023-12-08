import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/core/utils/validation_functions.dart';
import 'package:wanderly/widgets/custom_elevated_button.dart';
import 'package:wanderly/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgWanderly5Fo,
                              height: 72.v,
                              width: 67.h,
                              alignment: Alignment.center),
                          SizedBox(height: 29.v),
                          Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text("lbl_login_details".tr,
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 43.v),
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    hintText: "lbl_enter_your_name".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyMediumWhiteA700,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "err_msg_please_enter_valid_text"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 27.h, vertical: 14.v));
                              }),
                          SizedBox(height: 39.v),
                          Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: Text("lbl_email_id".tr,
                                  style: CustomTextStyles.titleLargeInter)),
                          SizedBox(height: 4.v),
                          Container(
                              height: 36.v,
                              width: 289.h,
                              margin: EdgeInsets.only(left: 9.h),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(18.h),
                                  border: Border.all(
                                      color: appTheme.lightBlue700,
                                      width: 1.h))),
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text("lbl_password".tr,
                                  style: CustomTextStyles.titleLargeInter)),
                          SizedBox(height: 17.v),
                          Padding(
                              padding: EdgeInsets.only(left: 9.h, right: 40.h),
                              child: BlocSelector<LoginBloc, LoginState,
                                      TextEditingController?>(
                                  selector: (state) => state.passwordController,
                                  builder: (context, passwordController) {
                                    return CustomTextFormField(
                                        controller: passwordController,
                                        textInputAction: TextInputAction.done);
                                  })),
                          SizedBox(height: 90.v),
                          CustomElevatedButton(
                              width: 165.h,
                              text: "lbl_confirm".tr,
                              buttonTextStyle:
                                  CustomTextStyles.headlineSmallInterWhiteA700,
                              onPressed: () {
                                onTapConfirm(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
