import 'bloc/login_sginup_bloc.dart';
import 'models/login_sginup_model.dart';
import 'package:flutter/material.dart';
import 'package:wanderly/core/app_export.dart';
import 'package:wanderly/widgets/custom_elevated_button.dart';

class LoginSginupScreen extends StatelessWidget {
  const LoginSginupScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginSginupBloc>(
        create: (context) => LoginSginupBloc(
            LoginSginupState(loginSginupModelObj: LoginSginupModel()))
          ..add(LoginSginupInitialEvent()),
        child: LoginSginupScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<LoginSginupBloc, LoginSginupState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgWanderly42,
                            height: 272.v,
                            width: 340.h),
                        SizedBox(height: 60.v),
                        CustomElevatedButton(
                            width: 165.h,
                            text: "lbl_login".tr,
                            onPressed: () {
                              onTapLogin(context);
                            }),
                        SizedBox(height: 22.v),
                        Text("lbl_or".tr, style: theme.textTheme.headlineLarge),
                        SizedBox(height: 18.v),
                        Text("lbl_sign_up".tr,
                            style: theme.textTheme.headlineLarge),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
