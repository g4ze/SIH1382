import 'bloc/passenger_home_on_bloc.dart';
import 'models/passenger_home_on_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/custom_switch.dart';

class PassengerHomeOnScreen extends StatelessWidget {
  const PassengerHomeOnScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PassengerHomeOnBloc>(
      create: (context) => PassengerHomeOnBloc(PassengerHomeOnState(
        passengerHomeOnModelObj: PassengerHomeOnModel(),
      ))
        ..add(PassengerHomeOnInitialEvent()),
      child: PassengerHomeOnScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.v),
                      child: Text(
                        "lbl_milkha_s".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2,
                      height: 61.adaptSize,
                      width: 61.adaptSize,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 54.v),
              Row(
                children: [
                  SizedBox(
                    width: 137.h,
                    child: Text(
                      "msg_collision_avoidance2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.19,
                      ),
                    ),
                  ),
                  BlocSelector<PassengerHomeOnBloc, PassengerHomeOnState,
                      bool?>(
                    selector: (state) => state.isSelectedSwitch,
                    builder: (context, isSelectedSwitch) {
                      return CustomSwitch(
                        margin: EdgeInsets.only(
                          left: 80.h,
                          top: 14.v,
                          bottom: 12.v,
                        ),
                        value: isSelectedSwitch,
                        onChange: (value) {
                          context
                              .read<PassengerHomeOnBloc>()
                              .add(ChangeSwitchEvent(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
              Container(
                width: 270.h,
                margin: EdgeInsets.only(
                  top: 16.v,
                  right: 39.h,
                ),
                child: Text(
                  "msg_always_keep_the".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumRegular.copyWith(
                    height: 1.19,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.fromLTRB(42.h, 73.v, 42.h, 5.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 57.h,
                    vertical: 70.v,
                  ),
                  decoration: AppDecoration.gradientRedToRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder112,
                  ),
                  child: Text(
                    "lbl_sos".tr,
                    style: theme.textTheme.displayLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
