import 'package:bloc/bloc.dart';
import 'package:study_chain/bloc/wallet/wallet_state.dart';

class WalletBloc extends Cubit<WalletState> {
  WalletBloc()
      : super(
          const WalletState(),
        );

  @override
  String toString() => "";

  void renderCompleted() {
    emit(
      state.copyWith(
        status: WalletStatus.idle,
      ),
    );
  }

  void getTokens() {
    emit(
      state.copyWith(
        status: WalletStatus.getTokenSuccess,
        tokenCount: 10,
      ),
    );
  }
}
