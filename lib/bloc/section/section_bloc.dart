import 'package:bloc/bloc.dart';
import 'package:study_chain/bloc/section/section.dart';
import 'package:study_chain/repository/section_repository.dart';

class SectionBloc extends Cubit<SectionState> {
  final SectionRepository _sectionRepository;

  SectionBloc(this._sectionRepository)
      : super(
          const SectionState(),
        );

  @override
  String toString() => "セクション";

  void render() {
    emit(
      state.copyWith(
        status: SectionStatus.idle,
      ),
    );
  }

  /// セクション回数更新
  void updateStudySectionCount() {
    emit(
      state.copyWith(
        status: SectionStatus.updateStudySectionCountSuccess,
        studySectionCount: state.studySectionCount + 1,
      ),
    );
  }

  /// セクション回数リセット
  void resetCount() {
    emit(
      state.copyWith(
        status: SectionStatus.updateStudySectionCountSuccess,
        studySectionCount: 0,
      ),
    );
  }

  ///
  Future<void> registerSectionCount() async {
    try {
      await _sectionRepository.addSection();

      emit(
        state.copyWith(
          status: SectionStatus.resetSuccess,
        ),
      );
    } catch (e, s) {
      addError(e, s);
    }
  }
}
