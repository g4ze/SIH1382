import 'bloc/track_bloc.dart';
import 'models/track_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_circleimage.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_image.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_title.dart';
import 'package:manav_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TrackBloc>(
        create: (context) => TrackBloc(TrackState(trackModelObj: TrackModel()))
          ..add(TrackInitialEvent()),
        child: TrackScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TrackBloc, TrackState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: SizedBox(
                          height: mediaQueryData.size.height,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                    height: 832.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImg44191,
                                              height: 639.v,
                                              width: 360.h,
                                              alignment: Alignment.topCenter),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskgroup84x47,
                                              height: 84.v,
                                              width: 47.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 155.v, right: 146.h))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.v),
                                    decoration: AppDecoration.outlineBlack900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 9.v),
                                          CustomAppBar(
                                              leadingWidth: 51.h,
                                              leading: AppbarImage(
                                                  svgPath:
                                                      ImageConstant.imgMenu,
                                                  margin: EdgeInsets.only(
                                                      left: 25.h,
                                                      top: 22.v,
                                                      bottom: 23.v)),
                                              actions: [
                                                AppbarTitle(
                                                    text: "lbl_milkha_s".tr,
                                                    margin: EdgeInsets.only(
                                                        left: 25.h,
                                                        top: 15.v,
                                                        bottom: 15.v)),
                                                AppbarCircleimage(
                                                    imagePath: ImageConstant
                                                        .imgEllipse2,
                                                    margin: EdgeInsets.only(
                                                        left: 6.h, right: 25.h))
                                              ]),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 25.h,
                                                  top: 11.v,
                                                  right: 35.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                        height: 80.adaptSize,
                                                        width: 80.adaptSize,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle141,
                                                                  height: 80
                                                                      .adaptSize,
                                                                  width: 80
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          5.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle14,
                                                                  height: 80
                                                                      .adaptSize,
                                                                  width: 80
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          5.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])),
                                                    CustomElevatedButton(
                                                        width: 180.h,
                                                        text: "lbl_hp_05_c_5500"
                                                            .tr,
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 18.v),
                                                        buttonStyle:
                                                            CustomButtonStyles
                                                                .fillAmberALR5),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgInfoBlack900,
                                                        height: 25.adaptSize,
                                                        width: 25.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 15.h,
                                                            top: 26.v,
                                                            bottom: 29.v),
                                                        onTap: () {
                                                          onTapImgInfoone(
                                                              context);
                                                        })
                                                  ]))
                                        ])))
                          ]))))));
    });
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
