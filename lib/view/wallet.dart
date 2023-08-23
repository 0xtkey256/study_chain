import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:study_chain/bloc/wallet/wallet.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  // Function to launch the URL
  Future<void> _launchURL() async {
    final url = 'https://astar.network'; // Replace with your desired URL
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener(
          bloc: context.read<WalletBloc>()..getTokens(),
          listener: (BuildContext context, WalletState state) {},
        ),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Token Counts: ${context.select((WalletBloc bloc) => bloc.state.tokenCount)}"),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _launchURL,
              child: Text("Release token to Astar Network"),
            ),
          ),
        ],
      ),
    );
  }
}
