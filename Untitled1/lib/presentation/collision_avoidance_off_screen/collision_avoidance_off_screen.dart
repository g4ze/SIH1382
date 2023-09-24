import 'bloc/collision_avoidance_off_bloc.dart';
import 'models/collision_avoidance_off_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';

class CollisionAvoidanceOffScreen extends StatelessWidget {
  const CollisionAvoidanceOffScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CollisionAvoidanceOffBloc>(
      create: (context) => CollisionAvoidanceOffBloc(CollisionAvoidanceOffState(
        collisionAvoidanceOffModelObj: CollisionAvoidanceOffModel(),
      ))
        ..add(CollisionAvoidanceOffInitialEvent()),
      child: CollisionAvoidanceOffScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CollisionAvoidanceOffBloc, CollisionAvoidanceOffState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 44.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 168.v,
                    width: 342.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "msg_collision_avoidance3".tr,
                            style: CustomTextStyles.headlineLargeBlack900Bold,
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
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskgroup119x119,
                    height: 119.adaptSize,
                    width: 119.adaptSize,
                  ),
                  SizedBox(height: 66.v),
                  Text(
                    "lbl_off".tr,
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                  SizedBox(height: 19.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
