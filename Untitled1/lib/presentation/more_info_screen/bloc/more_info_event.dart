// ignore_for_file: must_be_immutable

part of 'more_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MoreInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MoreInfoEvent extends Equatable {}

/// Event that is dispatched when the MoreInfo widget is first created.
class MoreInfoInitialEvent extends MoreInfoEvent {
  @override
  List<Object?> get props => [];
}
