import 'bloc/login_page_main_bloc.dart';
import 'models/login_page_main_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/core/utils/validation_functions.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';
import 'package:manav_s_application/widgets/custom_text_form_field.dart';
import 'package:manav_s_application/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginPageMainScreen extends StatelessWidget {
  LoginPageMainScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageMainBloc>(
        create: (context) => LoginPageMainBloc(
            LoginPageMainState(loginPageMainModelObj: LoginPageMainModel()))
          ..add(LoginPageMainInitialEvent()),
        child: LoginPageMainScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                              child: SizedBox(
                                  height: 402.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMaskgroup210x125,
                                            height: 210.v,
                                            width: 125.h,
                                            alignment: Alignment.bottomCenter),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMaskgroup264x264,
                                            height: 264.adaptSize,
                                            width: 264.adaptSize,
                                            alignment: Alignment.topLeft),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMaskgroup264x264,
                                            height: 264.adaptSize,
                                            width: 264.adaptSize,
                                            alignment: Alignment.topRight)
                                      ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 28.h, top: 12.v),
                              child: Text("lbl_welcome_back".tr,
                                  style: theme.textTheme.headlineSmall))),
                      BlocSelector<LoginPageMainBloc, LoginPageMainState,
                              TextEditingController?>(
                          selector: (state) => state.phoneController,
                          builder: (context, phoneController) {
                            return CustomTextFormField(
                                controller: phoneController,
                                margin: EdgeInsets.only(
                                    left: 28.h, top: 16.v, right: 22.h),
                                hintText: "lbl_email_or_phone".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                });
                          }),
                      BlocSelector<LoginPageMainBloc, LoginPageMainState,
                              TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                                controller: passwordController,
                                margin: EdgeInsets.only(
                                    left: 28.h, top: 15.v, right: 22.h),
                                hintText: "lbl_enter_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                obscureText: true);
                          }),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 12.v, right: 22.h),
                              child: Text("msg_forgot_passoword".tr,
                                  style: theme.textTheme.bodySmall))),
                      CustomElevatedButton(
                          text: "lbl_sign_in".tr,
                          margin: EdgeInsets.only(
                              left: 28.h, top: 14.v, right: 22.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientAmberAToPrimaryDecoration,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryContainer,
                          onTap: () {
                            onTapSignin(context);
                          }),
                      Padding(
                          padding: EdgeInsets.only(top: 20.v),
                          child: Divider(indent: 22.h, endIndent: 28.h)),
                      CustomElevatedButton(
                          text: "msg_sign_in_with_google".tr,
                          margin: EdgeInsets.fromLTRB(28.h, 21.v, 22.h, 5.v),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 10.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgImage4,
                                  height: 25.adaptSize,
                                  width: 25.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillOnPrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryContainer,
                          onTap: () {
                            onTapSigninwith(context);
                          })
                    ])))));
  }

  /// Navigates to the passengerHomepageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the passengerHomepageScreen.
  onTapSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.passengerHomepageScreen,
    );
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapSigninwith(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
