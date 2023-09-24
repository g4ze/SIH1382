import 'bloc/driver_home_on_logged_out_bloc.dart';
import 'models/driver_home_on_logged_out_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_switch.dart';

class DriverHomeOnLoggedOutScreen extends StatelessWidget {
  const DriverHomeOnLoggedOutScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DriverHomeOnLoggedOutBloc>(
        create: (context) => DriverHomeOnLoggedOutBloc(
            DriverHomeOnLoggedOutState(
                driverHomeOnLoggedOutModelObj: DriverHomeOnLoggedOutModel()))
          ..add(DriverHomeOnLoggedOutInitialEvent()),
        child: DriverHomeOnLoggedOutScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtLoginsignup(context);
                              },
                              child: Text("lbl_login_signup".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack900))),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 1.h, top: 80.v, right: 9.h),
                          child: Row(children: [
                            SizedBox(
                                width: 137.h,
                                child: Text("msg_collision_avoidance2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.headlineSmall!
                                        .copyWith(height: 1.19))),
                            BlocSelector<DriverHomeOnLoggedOutBloc,
                                    DriverHomeOnLoggedOutState, bool?>(
                                selector: (state) => state.isSelectedSwitch,
                                builder: (context, isSelectedSwitch) {
                                  return CustomSwitch(
                                      margin: EdgeInsets.only(
                                          left: 72.h, top: 17.v, bottom: 9.v),
                                      value: isSelectedSwitch,
                                      onChange: (value) {
                                        context
                                            .read<DriverHomeOnLoggedOutBloc>()
                                            .add(ChangeSwitchEvent(
                                                value: value));
                                      });
                                })
                          ])),
                      Container(
                          width: 270.h,
                          margin: EdgeInsets.only(
                              left: 1.h, top: 16.v, right: 40.h),
                          child: Text("msg_always_keep_the".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumRegular
                                  .copyWith(height: 1.19))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin:
                                  EdgeInsets.fromLTRB(43.h, 73.v, 43.h, 5.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 57.h, vertical: 70.v),
                              decoration: AppDecoration.gradientRedToRed
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder112),
                              child: Text("lbl_sos".tr,
                                  style: theme.textTheme.displayLarge)))
                    ]))));
  }

  /// Navigates to the loginPageDriverScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginPageDriverScreen.
  onTapTxtLoginsignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageDriverScreen,
    );
  }
}
