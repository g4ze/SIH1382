import 'bloc/more_info_bloc.dart';
import 'models/more_info_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_circleimage.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_image.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_title.dart';
import 'package:manav_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';
import 'package:manav_s_application/widgets/custom_rating_bar.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MoreInfoBloc>(
      create: (context) => MoreInfoBloc(MoreInfoState(
        moreInfoModelObj: MoreInfoModel(),
      ))
        ..add(MoreInfoInitialEvent()),
      child: MoreInfoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MoreInfoBloc, MoreInfoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: 51.h,
              leading: AppbarImage(
                svgPath: ImageConstant.imgMenu,
                margin: EdgeInsets.only(
                  left: 25.h,
                  top: 22.v,
                  bottom: 23.v,
                ),
              ),
              actions: [
                AppbarTitle(
                  text: "lbl_milkha_s".tr,
                  margin: EdgeInsets.only(
                    left: 25.h,
                    top: 15.v,
                    bottom: 15.v,
                  ),
                ),
                AppbarCircleimage(
                  imagePath: ImageConstant.imgEllipse2,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    right: 25.h,
                  ),
                ),
              ],
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.h,
                      top: 11.v,
                      right: 75.h,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle141,
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                radius: BorderRadius.circular(
                                  5.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle14,
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                radius: BorderRadius.circular(
                                  5.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        CustomElevatedButton(
                          width: 180.h,
                          text: "lbl_hp_05_c_5500".tr,
                          margin: EdgeInsets.symmetric(vertical: 18.v),
                          buttonStyle: CustomButtonStyles.fillAmberALR5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 47.v,
                    width: 158.h,
                    margin: EdgeInsets.only(
                      left: 25.h,
                      top: 47.v,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "msg_disability_rating2".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        CustomRatingBar(
                          alignment: Alignment.bottomLeft,
                          initialRating: 0,
                          itemCount: 1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 47.v,
                    width: 203.h,
                    margin: EdgeInsets.only(
                      left: 25.h,
                      top: 32.v,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "msg_sustainability_rating".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        CustomRatingBar(
                          alignment: Alignment.bottomLeft,
                          initialRating: 0,
                          itemCount: 1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 418.v,
                      width: 335.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "lbl_driver_s_name".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 32.v),
                              child: Text(
                                "lbl_rajesh_sharma".tr,
                                style: CustomTextStyles.bodyLarge16,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskgroup409x309,
                            height: 409.v,
                            width: 309.h,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
