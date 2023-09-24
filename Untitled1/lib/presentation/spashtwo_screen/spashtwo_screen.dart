import 'bloc/spashtwo_bloc.dart';
import 'models/spashtwo_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpashtwoScreen extends StatelessWidget {
  const SpashtwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SpashtwoBloc>(
        create: (context) =>
            SpashtwoBloc(SpashtwoState(spashtwoModelObj: SpashtwoModel()))
              ..add(SpashtwoInitialEvent()),
        child: SpashtwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SpashtwoBloc, SpashtwoState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.amberA100,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 577.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                          height: 518.v,
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMaskgroup518x360,
                                                    height: 518.v,
                                                    width: 360.h,
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage18,
                                                    height: 398.v,
                                                    width: 265.h,
                                                    alignment: Alignment.center)
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                          width: 317.h,
                                          child: Text("msg_more_confidence".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .headlineSmall24
                                                  .copyWith(height: 1.19))))
                                ])),
                        Container(
                            width: 284.h,
                            margin: EdgeInsets.only(
                                left: 21.h, top: 6.v, right: 54.h),
                            child: Text("msg_collision_prevention".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.19))),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(30.h, 29.v, 22.h, 5.v),
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
                                      Container(
                                          height: 50.v,
                                          width: 53.h,
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: CustomIconButton(
                                              height: 50.adaptSize,
                                              width: 50.adaptSize,
                                              padding: EdgeInsets.all(13.h),
                                              alignment: Alignment.centerLeft,
                                              onTap: () {
                                                onTapBtnArrowrightone(context);
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright)))
                                    ])))
                      ]))));
    });
  }

  /// Navigates to the spashthreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the spashthreeScreen.
  onTapBtnArrowrightone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.spashthreeScreen,
    );
  }
}
