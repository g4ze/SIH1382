import '../passenger_home_logged_out_screen/widgets/tripdetails1_item_widget.dart';
import 'bloc/passenger_home_logged_out_bloc.dart';
import 'models/passenger_home_logged_out_model.dart';
import 'models/tripdetails1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_image_1.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:manav_s_application/widgets/app_bar/custom_app_bar.dart';

class PassengerHomeLoggedOutScreen extends StatelessWidget {
  const PassengerHomeLoggedOutScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PassengerHomeLoggedOutBloc>(
        create: (context) => PassengerHomeLoggedOutBloc(
            PassengerHomeLoggedOutState(
                passengerHomeLoggedOutModelObj: PassengerHomeLoggedOutModel()))
          ..add(PassengerHomeLoggedOutInitialEvent()),
        child: PassengerHomeLoggedOutScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomAppBar(
                            height: 110.v,
                            centerTitle: true,
                            title: SizedBox(
                                height: 110.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      AppbarImage1(
                                          imagePath: ImageConstant
                                              .imgMaskgroup110x360),
                                      AppbarImage1(
                                          svgPath: ImageConstant.imgMenu,
                                          margin: EdgeInsets.fromLTRB(
                                              25.h, 40.v, 309.h, 54.v))
                                    ])),
                            actions: [
                              AppbarSubtitle(
                                  text: "lbl_login_signup".tr,
                                  margin: EdgeInsets.fromLTRB(
                                      24.h, 36.v, 24.h, 49.v),
                                  onTap: () {
                                    onTapLoginsignup(context);
                                  })
                            ]),
                        SizedBox(height: 29.v),
                        SizedBox(
                            height: 672.v,
                            width: 310.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("lbl_buses_near_you".tr,
                                          style: CustomTextStyles
                                              .bodyMediumRegular)),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 42.v),
                                          child: BlocSelector<
                                                  PassengerHomeLoggedOutBloc,
                                                  PassengerHomeLoggedOutState,
                                                  PassengerHomeLoggedOutModel?>(
                                              selector: (state) => state
                                                  .passengerHomeLoggedOutModelObj,
                                              builder: (context,
                                                  passengerHomeLoggedOutModelObj) {
                                                return ListView.separated(
                                                    physics:
                                                        BouncingScrollPhysics(),
                                                    shrinkWrap: true,
                                                    separatorBuilder:
                                                        (context, index) {
                                                      return SizedBox(
                                                          height: 20.v);
                                                    },
                                                    itemCount:
                                                        passengerHomeLoggedOutModelObj
                                                                ?.tripdetails1ItemList
                                                                .length ??
                                                            0,
                                                    itemBuilder:
                                                        (context, index) {
                                                      Tripdetails1ItemModel
                                                          model =
                                                          passengerHomeLoggedOutModelObj
                                                                      ?.tripdetails1ItemList[
                                                                  index] ??
                                                              Tripdetails1ItemModel();
                                                      return Tripdetails1ItemWidget(
                                                          model);
                                                    });
                                              })))
                                ]))
                      ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgMaskgroup702x360,
                      height: 702.v,
                      width: 360.h,
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  /// Navigates to the loginPageMainScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginPageMainScreen.
  onTapLoginsignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageMainScreen,
    );
  }
}
