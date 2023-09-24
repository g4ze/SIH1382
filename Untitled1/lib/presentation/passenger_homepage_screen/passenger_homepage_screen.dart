import '../passenger_homepage_screen/widgets/tripdetails_item_widget.dart';
import 'bloc/passenger_homepage_bloc.dart';
import 'models/passenger_homepage_model.dart';
import 'models/tripdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_circleimage.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_image_1.dart';
import 'package:manav_s_application/widgets/app_bar/appbar_title.dart';
import 'package:manav_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:manav_s_application/widgets/custom_search_view.dart';

class PassengerHomepageScreen extends StatelessWidget {
  const PassengerHomepageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PassengerHomepageBloc>(
      create: (context) => PassengerHomepageBloc(PassengerHomepageState(
        passengerHomepageModelObj: PassengerHomepageModel(),
      ))
        ..add(PassengerHomepageInitialEvent()),
      child: PassengerHomepageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 110.v,
          centerTitle: true,
          title: SizedBox(
            height: 110.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                AppbarImage1(
                  imagePath: ImageConstant.imgMaskgroup110x360,
                ),
                AppbarImage1(
                  svgPath: ImageConstant.imgMenu,
                  margin: EdgeInsets.fromLTRB(19.h, 32.v, 306.h, 47.v),
                ),
              ],
            ),
          ),
          actions: [
            AppbarTitle(
              text: "lbl_milkha_s".tr,
              margin: EdgeInsets.fromLTRB(25.h, 40.v, 24.h, 15.v),
            ),
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse2,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 25.v,
                right: 49.h,
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: 689.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskgroup668x280,
                height: 668.v,
                width: 280.h,
                alignment: Alignment.centerRight,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 90.v,
                  ),
                  child: Text(
                    "lbl_buses_near_you".tr,
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 133.v,
                    right: 25.h,
                  ),
                  child: BlocSelector<PassengerHomepageBloc,
                      PassengerHomepageState, PassengerHomepageModel?>(
                    selector: (state) => state.passengerHomepageModelObj,
                    builder: (context, passengerHomepageModelObj) {
                      return ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: 20.v,
                          );
                        },
                        itemCount: passengerHomepageModelObj
                                ?.tripdetailsItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          TripdetailsItemModel model = passengerHomepageModelObj
                                  ?.tripdetailsItemList[index] ??
                              TripdetailsItemModel();
                          return TripdetailsItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: BlocSelector<PassengerHomepageBloc,
                    PassengerHomepageState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      width: 310.h,
                      margin: EdgeInsets.only(top: 8.v),
                      controller: searchController,
                      hintText: "lbl_search".tr,
                      alignment: Alignment.topCenter,
                      prefix: Container(
                        margin: EdgeInsets.all(11.h),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSearch,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 40.v,
                      ),
                      suffix: Padding(
                        padding: EdgeInsets.only(
                          right: 15.h,
                        ),
                        child: IconButton(
                          onPressed: () {
                            searchController!.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
