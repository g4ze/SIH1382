// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'tripdetails1_item_model.dart';

/// This class defines the variables used in the [passenger_home_logged_out_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PassengerHomeLoggedOutModel extends Equatable {
  PassengerHomeLoggedOutModel({this.tripdetails1ItemList = const []}) {}

  List<Tripdetails1ItemModel> tripdetails1ItemList;

  PassengerHomeLoggedOutModel copyWith(
      {List<Tripdetails1ItemModel>? tripdetails1ItemList}) {
    return PassengerHomeLoggedOutModel(
      tripdetails1ItemList: tripdetails1ItemList ?? this.tripdetails1ItemList,
    );
  }

  @override
  List<Object?> get props => [tripdetails1ItemList];
}
