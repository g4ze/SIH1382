import 'bloc/spashone_bloc.dart';
import 'models/spashone_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpashoneScreen extends StatelessWidget {
  const SpashoneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SpashoneBloc>(
        create: (context) =>
            SpashoneBloc(SpashoneState(spashoneModelObj: SpashoneModel()))
              ..add(SpashoneInitialEvent()),
        child: SpashoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SpashoneBloc, SpashoneState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 583.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 572.v,
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse8,
                                                    height: 518.v,
                                                    width: 360.h,
                                                    alignment:
                                                        Alignment.topCenter),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        height: 572.v,
                                                        width: double.maxFinite,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMaskgroup572x360,
                                                                  height: 572.v,
                                                                  width: 360.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgIntersect,
                                                                  height: 206.v,
                                                                  width: 171.h)
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                          width: 301.h,
                                          margin: EdgeInsets.only(left: 21.h),
                                          child: Text(
                                              "msg_choose_the_bus_which".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .headlineSmallOnPrimaryContainer
                                                  .copyWith(height: 1.19))))
                                ])),
                        Container(
                            width: 282.h,
                            margin: EdgeInsets.only(left: 21.h, right: 56.h),
                            child: Text("msg_disability_based".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyLargeOnPrimaryContainer
                                    .copyWith(height: 1.19))),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(30.h, 29.v, 25.h, 5.v),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: 14.v,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 18.v),
                                          child: AnimatedSmoothIndicator(
                                              activeIndex: 0,
                                              count: 3,
                                              effect: ScrollingDotsEffect(
                                                  spacing: 10,
                                                  activeDotColor: theme
                                                      .colorScheme
                                                      .onPrimaryContainer
                                                      .withOpacity(1),
                                                  dotColor: theme.colorScheme
                                                      .onPrimaryContainer,
                                                  dotHeight: 14.v,
                                                  dotWidth: 14.h))),
                                      CustomIconButton(
                                          height: 50.adaptSize,
                                          width: 50.adaptSize,
                                          padding: EdgeInsets.all(13.h),
                                          onTap: () {
                                            onTapBtnArrowrightone(context);
                                          },
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright))
                                    ])))
                      ]))));
    });
  }

  /// Navigates to the spashtwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the spashtwoScreen.
  onTapBtnArrowrightone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.spashtwoScreen,
    );
  }
}
