// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [lost_and_found_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LostAndFoundModel extends Equatable {
  LostAndFoundModel() {}

  LostAndFoundModel copyWith() {
    return LostAndFoundModel();
  }

  @override
  List<Object?> get props => [];
}
