import 'bloc/complain_bloc.dart';
import 'models/complain_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_circleimage.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_image.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_title.dart';
import 'package:manav_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:manav_s_application/widgets/custom_elevated_button.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ComplainBloc>(
      create: (context) => ComplainBloc(ComplainState(
        complainModelObj: ComplainModel(),
      ))
        ..add(ComplainInitialEvent()),
      child: ComplainScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ComplainBloc, ComplainState>(
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
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 25.h,
                top: 60.v,
                right: 25.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_complain".tr,
                    style: CustomTextStyles.headlineLargeBlack900SemiBold,
                  ),
                  Container(
                    width: 268.h,
                    margin: EdgeInsets.only(
                      top: 26.v,
                      right: 41.h,
                    ),
                    child: Text(
                      "msg_we_apologise_for".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.30,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup22,
                    height: 50.v,
                    width: 302.h,
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "msg_attachments_optional".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 22.v),
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
      },
    );
  }
}
