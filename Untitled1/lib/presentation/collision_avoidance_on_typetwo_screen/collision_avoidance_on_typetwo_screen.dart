import 'bloc/collision_avoidance_on_typetwo_bloc.dart';
import 'models/collision_avoidance_on_typetwo_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';

class CollisionAvoidanceOnTypetwoScreen extends StatelessWidget {
  const CollisionAvoidanceOnTypetwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CollisionAvoidanceOnTypetwoBloc>(
      create: (context) =>
          CollisionAvoidanceOnTypetwoBloc(CollisionAvoidanceOnTypetwoState(
        collisionAvoidanceOnTypetwoModelObj: CollisionAvoidanceOnTypetwoModel(),
      ))
            ..add(CollisionAvoidanceOnTypetwoInitialEvent()),
      child: CollisionAvoidanceOnTypetwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CollisionAvoidanceOnTypetwoBloc,
        CollisionAvoidanceOnTypetwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 44.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 821.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse8599x360,
                              height: 599.v,
                              width: 360.h,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(bottom: 54.v),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 706.v,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMaskgroup640x360,
                                      height: 640.v,
                                      width: 360.h,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 25.h,
                                          top: 8.v,
                                          right: 25.h,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "msg_collision_avoidance3".tr,
                                              style: CustomTextStyles
                                                  .headlineLargeBlack900Bold,
                                            ),
                                            SizedBox(height: 186.v),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskgroup119x119,
                                              height: 119.adaptSize,
                                              width: 119.adaptSize,
                                            ),
                                            SizedBox(height: 66.v),
                                            Text(
                                              "lbl_on".tr,
                                              style: CustomTextStyles
                                                  .headlineLargeBlack900,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgC303223c53c0dac,
                              height: 131.v,
                              width: 342.h,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
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
