import 'package:bloc/bloc.dart';
import 'package:study_chain/bloc/timer/timer.dart';

class TimerBloc extends Cubit<TimerState> {
  TimerBloc()
      : super(
          const TimerState(),
        );

  @override
  String toString() => "";

  void renderCompleted() {
    emit(
      state.copyWith(
        status: TimerStatus.idle,
      ),
    );
  }

  void beginToStudy() {
    emit(
      state.copyWith(
        status: TimerStatus.studying,
        duration: TimerState.studyDuration,
      ),
    );
  }

  void beginToRest() {
    emit(
      state.copyWith(
        status: TimerStatus.resting,
        duration: TimerState.restDuration,
      ),
    );
  }

  void beginToPause() {
    emit(
      state.copyWith(
        status: TimerStatus.idle,
        duration: TimerState.studyDuration,
      ),
    );
  }
}
