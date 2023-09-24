// ignore_for_file: must_be_immutable

part of 'passenger_homepage_bloc.dart';

/// Represents the state of PassengerHomepage in the application.
class PassengerHomepageState extends Equatable {
  PassengerHomepageState({
    this.searchController,
    this.passengerHomepageModelObj,
  });

  TextEditingController? searchController;

  PassengerHomepageModel? passengerHomepageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        passengerHomepageModelObj,
      ];
  PassengerHomepageState copyWith({
    TextEditingController? searchController,
    PassengerHomepageModel? passengerHomepageModelObj,
  }) {
    return PassengerHomepageState(
      searchController: searchController ?? this.searchController,
      passengerHomepageModelObj:
          passengerHomepageModelObj ?? this.passengerHomepageModelObj,
    );
  }
}
