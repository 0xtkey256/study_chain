import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_chain/bloc/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:study_chain/view/shop.dart';
import 'package:study_chain/view/timer.dart';
import 'package:study_chain/view/wallet.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      const Timer(),
      const Wallet(),
      const Shop(),
    ];

    return MultiBlocListener(
      listeners: [
        BlocListener(
          bloc: context.read<BottomNavigationBarBloc>(),
          listener: (BuildContext context, BottomNavigationBarState state) {},
        ),
      ],
      child: Scaffold(
        body: pages[context.select((BottomNavigationBarBloc bloc) => bloc.state.index)],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: context.select((BottomNavigationBarBloc bloc) => bloc.state.index),
          onTap: (int i) => context.read<BottomNavigationBarBloc>().changeIndex(i),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              activeIcon: Icon(Icons.timer_outlined),
              label: 'Timer',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              activeIcon: Icon(Icons.wallet_outlined),
              label: 'Wallet',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              activeIcon: Icon(Icons.shop_outlined),
              label: 'Shop',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
