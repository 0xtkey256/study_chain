import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_state.freezed.dart';

enum WalletStatus {
  getTokenSuccess("トークン取得成功"),
  idle('待機');

  const WalletStatus(this.state);
  final String state;
}

@Freezed()
class WalletState with _$WalletState {
  const WalletState._();

  const factory WalletState({
    ///
    WalletStatus? status,

    ///
    @Default(0) int tokenCount,
  }) = _WalletState;

  @override
  String toString() => "[WalletState] $status";
}
