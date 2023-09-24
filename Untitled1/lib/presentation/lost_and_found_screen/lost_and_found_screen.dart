import 'bloc/lost_and_found_bloc.dart';
import 'models/lost_and_found_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_circleimage.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_image.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_title.dart';
import 'package:manav_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';
import 'package:manav_s_application/widgets/custom_text_form_field.dart';

class LostAndFoundScreen extends StatelessWidget {
  const LostAndFoundScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LostAndFoundBloc>(
      create: (context) => LostAndFoundBloc(LostAndFoundState(
        lostAndFoundModelObj: LostAndFoundModel(),
      ))
        ..add(LostAndFoundInitialEvent()),
      child: LostAndFoundScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_lost_found".tr,
                style: CustomTextStyles.headlineLargeBlack900SemiBold,
              ),
              Container(
                width: 243.h,
                margin: EdgeInsets.only(
                  top: 5.v,
                  right: 66.h,
                ),
                child: Text(
                  "msg_lost_your_belonging".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.30,
                  ),
                ),
              ),
              SizedBox(height: 65.v),
              Text(
                "msg_describe_the_lost".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
              BlocSelector<LostAndFoundBloc, LostAndFoundState,
                  TextEditingController?>(
                selector: (state) => state.descriptiononeController,
                builder: (context, descriptiononeController) {
                  return CustomTextFormField(
                    controller: descriptiononeController,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      right: 33.h,
                    ),
                    hintText: "lbl_write_here".tr,
                    hintStyle: CustomTextStyles.bodyMediumBlack900Regular,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 13.h,
                      vertical: 7.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                    fillColor: appTheme.blueGray100,
                  );
                },
              ),
              SizedBox(height: 78.v),
              Text(
                "msg_attach_an_image".tr,
                style: CustomTextStyles.titleMediumMedium,
              ),
              SizedBox(height: 6.v),
              CustomElevatedButton(
                height: 50.v,
                text: "lbl_upload_file".tr,
                buttonStyle: CustomButtonStyles.fillAmberA,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 70.v,
          text: "lbl_submit".tr,
          margin: EdgeInsets.only(
            left: 25.h,
            right: 25.h,
            bottom: 51.v,
          ),
          buttonTextStyle: theme.textTheme.headlineLarge!,
        ),
      ),
    );
  }
}
