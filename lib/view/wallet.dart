import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_chain/bloc/wallet/wallet.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener(
          bloc: context.read<WalletBloc>()..getTokens(),
          listener: (BuildContext context, WalletState state) {},
        ),
      ],
      child: Center(
        child: Text("Token Counts: ${context.select((WalletBloc bloc) => bloc.state.tokenCount)}"),
      ),
    );
  }
}
