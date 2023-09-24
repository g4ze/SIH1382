// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:manav_s_application/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [ticket_booking_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketBookingModel extends Equatable {
  TicketBookingModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  TicketBookingModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return TicketBookingModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
