import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_chain/bloc/section/section_bloc.dart';
import 'package:study_chain/bloc/section/section_state.dart';
import 'package:study_chain/bloc/timer/timer_bloc.dart';
import 'package:study_chain/bloc/timer/timer_state.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final _timerController = CountDownController();

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final studySectionCount = context.select((SectionBloc bloc) => bloc.state.studySectionCount);
    final status = context.select((TimerBloc bloc) => bloc.state.status);
    final color = status.isStudying || studySectionCount == 0 ? Colors.blue : Colors.deepOrange;

    return MultiBlocListener(
      listeners: [
        BlocListener(
          bloc: context.read<SectionBloc>(),
          listener: (BuildContext context, SectionState state) {
            // switch (state.status) {
            //   case SectionStatus.resetSuccess:
            //   case SectionStatus.updateStudySectionCountSuccess:
            //   case SectionStatus.idle:
            //     break;
            // }
          },
        ),
        BlocListener(
          bloc: context.read<TimerBloc>(),
          listener: (BuildContext context, TimerState state) {
            switch (state.status) {
              case TimerStatus.idle:
                _timerController.restart(
                  duration: TimerState.studyDuration,
                );
                _timerController.pause();
                break;
              case TimerStatus.studying:
              case TimerStatus.resting:
                _timerController.restart(
                  duration: state.duration,
                );
                break;
            }
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.only(
          top: 200,
        ),
        child: Column(
          children: [
            Text("Section : $studySectionCount"),
            Text(status.state),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Center(
                child: CircularCountDownTimer(
                  isReverse: true,
                  controller: _timerController,
                  width: 200,
                  height: 200,
                  duration: duration,
                  fillColor: color,
                  ringColor: Colors.white,
                  strokeWidth: 20,
                  autoStart: false,
                  textFormat: CountdownTextFormat.MM_SS,
                  onComplete: () {
                    switch (status) {
                      case TimerStatus.studying:
                        context.read<SectionBloc>().updateStudySectionCount();
                        context.read<TimerBloc>().beginToRest();
                        break;
                      case TimerStatus.resting:
                        context.read<TimerBloc>().beginToStudy();
                        break;
                      case TimerStatus.idle:
                        // context.read<TimerBloc>().beginToStudy();
                        break;
                    }
                  },
                ),
              ),
            ),
            if (status.isPausing)
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<TimerBloc>().beginToStudy();
                    _timerController.start();
                  },
                  child: const Text("Start"),
                ),
              ),
            if (status.isStudying || status.isResting)
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<SectionBloc>().resetCount();
                    context.read<TimerBloc>().beginToPause();
                  },
                  child: const Text("Finish"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
