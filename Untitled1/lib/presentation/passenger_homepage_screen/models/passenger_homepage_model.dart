// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'tripdetails_item_model.dart';

/// This class defines the variables used in the [passenger_homepage_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PassengerHomepageModel extends Equatable {
  PassengerHomepageModel({this.tripdetailsItemList = const []}) {}

  List<TripdetailsItemModel> tripdetailsItemList;

  PassengerHomepageModel copyWith(
      {List<TripdetailsItemModel>? tripdetailsItemList}) {
    return PassengerHomepageModel(
      tripdetailsItemList: tripdetailsItemList ?? this.tripdetailsItemList,
    );
  }

  @override
  List<Object?> get props => [tripdetailsItemList];
}
