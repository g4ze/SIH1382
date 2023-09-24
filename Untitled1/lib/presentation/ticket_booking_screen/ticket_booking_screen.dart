import 'bloc/ticket_booking_bloc.dart';
import 'models/ticket_booking_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_circleimage.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_image.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_title.dart';
import 'package:manav_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:manav_s_application/widgets/custom_drop_down.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';
import 'package:manav_s_application/widgets/custom_outlined_button.dart';

class TicketBookingScreen extends StatelessWidget {
  const TicketBookingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TicketBookingBloc>(
        create: (context) => TicketBookingBloc(
            TicketBookingState(ticketBookingModelObj: TicketBookingModel()))
          ..add(TicketBookingInitialEvent()),
        child: TicketBookingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 51.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        EdgeInsets.only(left: 25.h, top: 22.v, bottom: 23.v)),
                actions: [
                  AppbarTitle(
                      text: "lbl_milkha_s".tr,
                      margin:
                          EdgeInsets.only(left: 25.h, top: 15.v, bottom: 15.v)),
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse2,
                      margin: EdgeInsets.only(left: 6.h, right: 25.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Row(children: [
                            SizedBox(
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle141,
                                          height: 80.adaptSize,
                                          width: 80.adaptSize,
                                          radius: BorderRadius.circular(5.h),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle14,
                                          height: 80.adaptSize,
                                          width: 80.adaptSize,
                                          radius: BorderRadius.circular(5.h),
                                          alignment: Alignment.center)
                                    ])),
                            CustomElevatedButton(
                                width: 180.h,
                                text: "lbl_hp_05_c_5500".tr,
                                margin: EdgeInsets.symmetric(vertical: 18.v),
                                buttonStyle: CustomButtonStyles.fillAmberALR5),
                            CustomImageView(
                                svgPath: ImageConstant.imgInfoBlack900,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 15.h, top: 26.v, bottom: 29.v),
                                onTap: () {
                                  onTapImgInfoone(context);
                                })
                          ])),
                      SizedBox(height: 42.v),
                      Text("lbl_pickup_station".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 8.v),
                      BlocSelector<TicketBookingBloc, TicketBookingState,
                              TicketBookingModel?>(
                          selector: (state) => state.ticketBookingModelObj,
                          builder: (context, ticketBookingModelObj) {
                            return CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 10.h, 15.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: "lbl_nahal".tr,
                                items:
                                    ticketBookingModelObj?.dropdownItemList ??
                                        [],
                                onChanged: (value) {
                                  context
                                      .read<TicketBookingBloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                });
                          }),
                      SizedBox(height: 32.v),
                      Text("lbl_drop_station".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 8.v),
                      BlocSelector<TicketBookingBloc, TicketBookingState,
                              TicketBookingModel?>(
                          selector: (state) => state.ticketBookingModelObj,
                          builder: (context, ticketBookingModelObj) {
                            return CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 10.h, 15.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: "lbl_mandi".tr,
                                items:
                                    ticketBookingModelObj?.dropdownItemList1 ??
                                        [],
                                onChanged: (value) {
                                  context
                                      .read<TicketBookingBloc>()
                                      .add(ChangeDropDown1Event(value: value));
                                });
                          }),
                      SizedBox(height: 27.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 205.v,
                              width: 189.h,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Text("msg_price_per_ticket".tr,
                                            style: CustomTextStyles
                                                .headlineSmallRegular)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                            height: 170.adaptSize,
                                            width: 170.adaptSize,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMaskgroup170x170,
                                                      height: 170.adaptSize,
                                                      width: 170.adaptSize,
                                                      alignment:
                                                          Alignment.center),
                                                  CustomOutlinedButton(
                                                      height: 80.v,
                                                      width: 80.h,
                                                      text: "lbl_95".tr,
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .outlineAmberA,
                                                      buttonTextStyle: theme
                                                          .textTheme
                                                          .headlineMedium!,
                                                      alignment:
                                                          Alignment.center)
                                                ])))
                                  ]))),
                      SizedBox(height: 10.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 70.v,
                text: "lbl_pay".tr,
                margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 51.v),
                buttonTextStyle: theme.textTheme.headlineLarge!)));
  }

  /// Navigates to the moreInfoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the moreInfoScreen.
  onTapImgInfoone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.moreInfoScreen,
    );
  }
}
