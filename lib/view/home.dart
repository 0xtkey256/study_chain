import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_chain/bloc/section/section.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _timerController = CountDownController();
  bool _isStudying = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener(
            bloc: context.read<SectionBloc>(),
            listener: (BuildContext context, SectionState state) {
              //
            },
          ),
        ],
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              top: 200,
            ),
            child: Column(
              children: [
                Text(
                  context.select(
                    (SectionBloc bloc) => bloc.state.studySectionCount.toString(),
                  ),
                ),
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
                      duration: _isStudying ? 3 : 2,
                      fillColor: _isStudying ? Colors.blue : Colors.deepOrange,
                      ringColor: Colors.white,
                      strokeWidth: 20,
                      autoStart: false,
                      textFormat: CountdownTextFormat.MM_SS,
                      onComplete: () {
                        if (_isStudying) {
                          context.read<SectionBloc>().updateStudySectionCount();
                        }

                        setState(() {
                          _isStudying = !_isStudying;
                          _timerController.restart(
                            duration: _isStudying ? 3 : 2,
                          );
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () => setState(
                      () {
                        _timerController.start();
                      },
                    ),
                    child: const Text("Start"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _timerController.reset();
                        _timerController.pause();
                        _isStudying = true;
                      });

                      context.read<SectionBloc>().resetCount();
                    },
                    child: const Text("Finish"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
