import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/more_info_screen/models/more_info_model.dart';
part 'more_info_event.dart';
part 'more_info_state.dart';

/// A bloc that manages the state of a MoreInfo according to the event that is dispatched to it.
class MoreInfoBloc extends Bloc<MoreInfoEvent, MoreInfoState> {
  MoreInfoBloc(MoreInfoState initialState) : super(initialState) {
    on<MoreInfoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MoreInfoInitialEvent event,
    Emitter<MoreInfoState> emit,
  ) async {}
}
