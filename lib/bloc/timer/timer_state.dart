import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

enum TimerStatus {
  studying("勉強中"),
  resting("休憩中"),
  idle('待機');

  const TimerStatus(this.state);
  final String state;

  bool get isStudying {
    return state == TimerStatus.studying.state;
  }

  bool get isPausing {
    return state == TimerStatus.idle.state;
  }

  bool get isResting {
    return state == TimerStatus.resting.state;
  }
}

@Freezed()
class TimerState with _$TimerState {
  const TimerState._();
  static const studyDuration = 3;
  static const restDuration = 2;

  const factory TimerState({
    ///
    @Default(TimerStatus.idle) TimerStatus status,

    ///
    // @Default(false) bool isStudying,

    ///
    @Default(TimerState.studyDuration) int duration,
  }) = _TimerState;

  @override
  String toString() => "[TimerState] $status";
}
