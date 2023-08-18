import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_chain/bloc/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:study_chain/bloc/section/section.dart';
import 'package:study_chain/bloc/timer/timer.dart';
import 'package:study_chain/view/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SectionBloc>(
          create: (BuildContext context) => SectionBloc(),
        ),
        BlocProvider<TimerBloc>(
          create: (BuildContext context) => TimerBloc(),
        ),
        BlocProvider<BottomNavigationBarBloc>(
          create: (BuildContext context) => BottomNavigationBarBloc(),
        ),
      ],
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
