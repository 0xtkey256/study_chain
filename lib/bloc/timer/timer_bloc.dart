import 'package:bloc/bloc.dart';
import 'package:study_chain/bloc/timer/timer.dart';

class TimerBloc extends Cubit<TimerState> {
  TimerBloc()
      : super(
          const TimerState(),
        );

  @override
  String toString() => "タイマー";

  void render() {
    emit(
      state.copyWith(
        status: TimerStatus.idle,
      ),
    );
  }
}
