// ignore_for_file: must_be_immutable

part of 'lost_and_found_bloc.dart';

/// Represents the state of LostAndFound in the application.
class LostAndFoundState extends Equatable {
  LostAndFoundState({
    this.descriptiononeController,
    this.lostAndFoundModelObj,
  });

  TextEditingController? descriptiononeController;

  LostAndFoundModel? lostAndFoundModelObj;

  @override
  List<Object?> get props => [
        descriptiononeController,
        lostAndFoundModelObj,
      ];
  LostAndFoundState copyWith({
    TextEditingController? descriptiononeController,
    LostAndFoundModel? lostAndFoundModelObj,
  }) {
    return LostAndFoundState(
      descriptiononeController:
          descriptiononeController ?? this.descriptiononeController,
      lostAndFoundModelObj: lostAndFoundModelObj ?? this.lostAndFoundModelObj,
    );
  }
}
