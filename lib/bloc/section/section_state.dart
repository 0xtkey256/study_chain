import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_state.freezed.dart';

enum SectionStatus {
  updateStudySectionCountSuccess("セクション回数更新完了"),
  resetSuccess("カウントリセット成功"),
  idle('待機');

  const SectionStatus(this.state);
  final String state;
}

@Freezed()
class SectionState with _$SectionState {
  const SectionState._();

  const factory SectionState({
    ///
    SectionStatus? status,

    /// Studyセクション回数
    @Default(0) int studySectionCount,
  }) = _SectionState;

  @override
  String toString() => "[SectionState] $status";
}
