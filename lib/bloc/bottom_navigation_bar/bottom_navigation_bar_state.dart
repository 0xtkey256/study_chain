import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_bar_state.freezed.dart';

enum BottomNavigationBarStatus {
  idle('待機');

  const BottomNavigationBarStatus(this.state);
  final String state;
}

@Freezed()
class BottomNavigationBarState with _$BottomNavigationBarState {
  const BottomNavigationBarState._();

  const factory BottomNavigationBarState({
    ///
    BottomNavigationBarStatus? status,

    ///
    @Default(0) int index,
  }) = _BottomNavigationBarState;

  @override
  String toString() => "[BottomNavigationBarState] $status";
}
