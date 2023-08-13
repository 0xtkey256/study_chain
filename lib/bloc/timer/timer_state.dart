import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

enum TimerStatus {
  idle('待機');

  const TimerStatus(this.state);
  final String state;
}

@Freezed()
class TimerState with _$TimerState {
  const TimerState._();

  const factory TimerState({
    ///
    TimerStatus? status,
  }) = _TimerState;

  @override
  String toString() => "[TimerState] $status";
}
