import '../models/tripdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';

// ignore: must_be_immutable
class TripdetailsItemWidget extends StatelessWidget {
  TripdetailsItemWidget(
    this.tripdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TripdetailsItemModel tripdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle14,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_from".tr,
                            style: CustomTextStyles.titleLargeRegular,
                          ),
                          Text(
                            "lbl_to".tr,
                            style: CustomTextStyles.titleLargeRegular,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_shimla".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                            Text(
                              "lbl_nahal".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "msg_approx_arrival".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
