import 'bloc/spashthree_bloc.dart';
import 'models/spashthree_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpashthreeScreen extends StatelessWidget {
  const SpashthreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SpashthreeBloc>(
        create: (context) => SpashthreeBloc(
            SpashthreeState(spashthreeModelObj: SpashthreeModel()))
          ..add(SpashthreeInitialEvent()),
        child: SpashthreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SpashthreeBloc, SpashthreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 512.v,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgMaskgroup512x360,
                                  height: 512.v,
                                  width: 360.h,
                                  alignment: Alignment.center),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIntersect160x221,
                                  height: 160.v,
                                  width: 221.h)
                            ])),
                        Container(
                            width: 289.h,
                            margin: EdgeInsets.only(left: 21.h, right: 49.h),
                            child: Text("msg_more_information".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.headlineSmall24
                                    .copyWith(height: 1.19))),
                        Container(
                            width: 286.h,
                            margin: EdgeInsets.only(
                                left: 21.h, top: 9.v, right: 52.h),
                            child: Text("msg_get_everything_from".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.19))),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(30.h, 8.v, 22.h, 5.v),
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
                                                  activeDotColor: appTheme
                                                      .black900
                                                      .withOpacity(0.6),
                                                  dotColor: appTheme.black900
                                                      .withOpacity(0.1),
                                                  dotHeight: 14.v,
                                                  dotWidth: 14.h))),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                          child: CustomElevatedButton(
                                              height: 50.v,
                                              width: 50.h,
                                              text: "lbl_go".tr,
                                              buttonStyle:
                                                  CustomButtonStyles.none,
                                              decoration: CustomButtonStyles
                                                  .gradientAmberAToPrimaryTL10Decoration,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleLargeOnPrimaryContainer,
                                              onTap: () {
                                                onTapGo(context);
                                              }))
                                    ])))
                      ]))));
    });
  }

  /// Navigates to the passengerHomeLoggedOutScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the passengerHomeLoggedOutScreen.
  onTapGo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.passengerHomeLoggedOutScreen,
    );
  }
}
