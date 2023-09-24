import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/lost_and_found_screen/models/lost_and_found_model.dart';
part 'lost_and_found_event.dart';
part 'lost_and_found_state.dart';

/// A bloc that manages the state of a LostAndFound according to the event that is dispatched to it.
class LostAndFoundBloc extends Bloc<LostAndFoundEvent, LostAndFoundState> {
  LostAndFoundBloc(LostAndFoundState initialState) : super(initialState) {
    on<LostAndFoundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LostAndFoundInitialEvent event,
    Emitter<LostAndFoundState> emit,
  ) async {
    emit(state.copyWith(
      descriptiononeController: TextEditingController(),
    ));
  }
}
