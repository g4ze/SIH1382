import 'bloc/user_type_bloc.dart';
import 'models/user_type_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';
import 'package:manav_s_application/widgets/custom_outlined_button.dart';

class UserTypeScreen extends StatelessWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<UserTypeBloc>(
        create: (context) =>
            UserTypeBloc(UserTypeState(userTypeModelObj: UserTypeModel()))
              ..add(UserTypeInitialEvent()),
        child: UserTypeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<UserTypeBloc, UserTypeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(
                        height: 435.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup,
                              height: 279.v,
                              width: 360.h,
                              alignment: Alignment.topCenter),
                          CustomImageView(
                              imagePath: ImageConstant.imgB2c7e0a542198f5,
                              height: 128.adaptSize,
                              width: 128.adaptSize,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(bottom: 67.v)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("lbl_namaste".tr,
                                  style: theme.textTheme.displayMedium))
                        ])),
                    CustomOutlinedButton(
                        text: "msg_bus_driver_conductor".tr,
                        margin:
                            EdgeInsets.only(left: 38.h, top: 48.v, right: 39.h),
                        onTap: () {
                          onTapBus(context);
                        }),
                    CustomOutlinedButton(
                        text: "lbl_passenger".tr,
                        margin:
                            EdgeInsets.only(left: 38.h, top: 22.v, right: 38.h),
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                        onTap: () {
                          onTapPassenger(context);
                        }),
                    SizedBox(height: 22.v),
                    SizedBox(
                        height: 168.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomElevatedButton(
                              height: 52.v,
                              width: 284.h,
                              text: "msg_collision_avoidance".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientAmberAToPrimaryDecoration,
                              buttonTextStyle: CustomTextStyles
                                  .titleLargeOnPrimaryContainer_1,
                              onTap: () {
                                onTapCollision(context);
                              },
                              alignment: Alignment.topCenter),
                          CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup157x360,
                              height: 157.v,
                              width: 360.h,
                              alignment: Alignment.bottomCenter)
                        ]))
                  ]))));
    });
  }

  /// Navigates to the driverHomeOnLoggedOutScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the driverHomeOnLoggedOutScreen.
  onTapBus(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.driverHomeOnLoggedOutScreen,
    );
  }

  /// Navigates to the spashoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the spashoneScreen.
  onTapPassenger(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.spashoneScreen,
    );
  }

  /// Navigates to the collisionAvoidanceOffScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the collisionAvoidanceOffScreen.
  onTapCollision(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.collisionAvoidanceOffScreen,
    );
  }
}
