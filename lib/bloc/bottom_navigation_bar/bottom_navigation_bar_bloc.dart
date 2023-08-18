import 'package:bloc/bloc.dart';
import 'package:study_chain/bloc/bottom_navigation_bar/bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarBloc()
      : super(
          const BottomNavigationBarState(),
        );

  @override
  String toString() => "BottomNavigationBarBloc";

  void renderCompleted() {
    emit(
      state.copyWith(
        status: BottomNavigationBarStatus.idle,
      ),
    );
  }

  void changeIndex(int index) {
    emit(
      state.copyWith(
        index: index,
      ),
    );
  }
}
