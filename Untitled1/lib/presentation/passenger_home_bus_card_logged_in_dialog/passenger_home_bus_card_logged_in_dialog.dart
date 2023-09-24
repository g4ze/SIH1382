import 'bloc/passenger_home_bus_card_logged_in_bloc.dart';
import 'models/passenger_home_bus_card_logged_in_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';
import 'package:manav_s_application/widgets/custom_rating_bar.dart';

class PassengerHomeBusCardLoggedInDialog extends StatelessWidget {
  const PassengerHomeBusCardLoggedInDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PassengerHomeBusCardLoggedInBloc>(
        create: (context) => PassengerHomeBusCardLoggedInBloc(
            PassengerHomeBusCardLoggedInState(
                passengerHomeBusCardLoggedInModelObj:
                    PassengerHomeBusCardLoggedInModel()))
          ..add(PassengerHomeBusCardLoggedInInitialEvent()),
        child: PassengerHomeBusCardLoggedInDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 310.h,
        padding: EdgeInsets.all(25.h),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle14,
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    radius: BorderRadius.circular(5.h),
                    margin: EdgeInsets.only(bottom: 3.v)),
                Padding(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomElevatedButton(
                              width: 180.h,
                              text: "lbl_hp_05_c_5500".tr,
                              buttonStyle: CustomButtonStyles.fillAmberALR5),
                          CustomElevatedButton(
                              height: 18.v,
                              width: 71.h,
                              text: "lbl_more_info".tr,
                              margin: EdgeInsets.only(top: 3.v, right: 6.h),
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 4.h),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgInfoBlack900)),
                              buttonStyle: CustomButtonStyles.none,
                              buttonTextStyle:
                                  CustomTextStyles.bodySmallBlack900,
                              onTap: () {
                                onTapMoreinfo(context);
                              })
                        ]))
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 38.v, right: 14.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("msg_disability_rating".tr,
                                      style: CustomTextStyles.bodyLarge16)),
                              CustomRatingBar(
                                  margin: EdgeInsets.only(left: 1.h, top: 2.v),
                                  initialRating: 0),
                              SizedBox(height: 25.v),
                              Text("lbl_route".tr,
                                  style: CustomTextStyles.bodyLarge16),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 1.h, top: 14.v),
                                  child: Row(children: [
                                    Container(
                                        height: 267.v,
                                        width: 15.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 3.v),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 6.h),
                                                      child: SizedBox(
                                                          height: 264.v,
                                                          child: VerticalDivider(
                                                              width: 2.h,
                                                              thickness: 2.v,
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary)))),
                                              Align(
                                                  alignment: Alignment
                                                      .topCenter,
                                                  child: Container(
                                                      height: 15.adaptSize,
                                                      width: 15.adaptSize,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .amberA100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      7.h)))),
                                              Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child: Container(
                                                      height: 15.adaptSize,
                                                      width: 15.adaptSize,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .amberA100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      7.h)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            height:
                                                                15.adaptSize,
                                                            width: 15.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .amberA100,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.h))),
                                                        SizedBox(height: 71.v),
                                                        Container(
                                                            height:
                                                                15.adaptSize,
                                                            width: 15.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .amberA100,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.h)))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_chamba".tr,
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 56.v),
                                              Text("lbl_shimla".tr,
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 62.v),
                                              Text("lbl_nahal".tr,
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 59.v),
                                              Text("lbl_mandi".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)
                                            ]))
                                  ]))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(bottom: 334.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_next_stop".tr,
                                      style: CustomTextStyles.bodyLarge16),
                                  Text("lbl_nahal".tr,
                                      style:
                                          CustomTextStyles.titleLargeSemiBold)
                                ]))
                      ])),
              SizedBox(height: 56.v),
              CustomElevatedButton(
                  height: 42.v,
                  text: "lbl_track_live".tr,
                  buttonTextStyle:
                      CustomTextStyles.titleLargeOnPrimaryContainer,
                  onTap: () {
                    onTapTracklive(context);
                  }),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                  height: 42.v,
                  text: "lbl_book_ticket".tr,
                  buttonTextStyle:
                      CustomTextStyles.titleLargeOnPrimaryContainer,
                  onTap: () {
                    onTapBookticket(context);
                  })
            ]));
  }

  /// Navigates to the moreInfoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the moreInfoScreen.
  onTapMoreinfo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.moreInfoScreen,
    );
  }

  /// Navigates to the trackScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the trackScreen.
  onTapTracklive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackScreen,
    );
  }

  /// Navigates to the ticketBookingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the ticketBookingScreen.
  onTapBookticket(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketBookingScreen,
    );
  }
}
