import 'bloc/passenger_home_ham_menu_bloc.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';

class PassengerHomeHamMenuDraweritem extends StatelessWidget {
  const PassengerHomeHamMenuDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: 240.h,
            padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 184.v),
            decoration: AppDecoration.fillPrimary,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomElevatedButton(
                  height: 30.v,
                  width: 181.h,
                  text: "lbl_file_complaint".tr,
                  margin: EdgeInsets.only(left: 2.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 13.h),
                      child: CustomImageView(svgPath: ImageConstant.imgInfo)),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle:
                      CustomTextStyles.titleLargeOnPrimaryContainer,
                  onTap: () {
                    onTapFilecomplaint(context);
                  }),
              CustomElevatedButton(
                  height: 30.v,
                  width: 187.h,
                  text: "lbl_lost_and_found".tr,
                  margin: EdgeInsets.only(left: 7.h, top: 17.v),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 16.h),
                      child: CustomImageView(svgPath: ImageConstant.imgFile)),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle:
                      CustomTextStyles.titleLargeOnPrimaryContainer,
                  onTap: () {
                    onTapLostandfound(context);
                  }),
              CustomElevatedButton(
                  height: 30.v,
                  width: 77.h,
                  text: "lbl_sos".tr,
                  margin: EdgeInsets.only(left: 5.h, top: 20.v, bottom: 20.v),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 13.h),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgGroup10)),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle:
                      CustomTextStyles.titleLargeOnPrimaryContainer,
                  onTap: () {
                    onTapSos(context);
                  })
            ])));
  }

  /// Navigates to the complainScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the complainScreen.
  onTapFilecomplaint(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.complainScreen,
    );
  }

  /// Navigates to the lostAndFoundScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the lostAndFoundScreen.
  onTapLostandfound(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lostAndFoundScreen,
    );
  }

  /// Navigates to the passengerHomeOnScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the passengerHomeOnScreen.
  onTapSos(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.passengerHomeOnScreen,
    );
  }
}
