import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_chain/bloc/shop/shop.dart';
import 'package:study_chain/entity/commodity.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener(
          bloc: context.read<ShopBloc>()..getCommodities(),
          listener: (BuildContext context, ShopState state) {
            switch (state.status) {
              case ShopStatus.getCommoditiesSuccess:
                context.read<ShopBloc>().renderCompleted();
                break;
              case ShopStatus.idle:
                break;
              default:
                break;
            }
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: context.read<ShopBloc>().state.commodities == null
              ? []
              : context
                  .read<ShopBloc>()
                  .state
                  .commodities!
                  .map(
                    (e) => _Tile(e),
                  )
                  .toList(),
        ),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  final CommodityEntity commodity;

  const _Tile(this.commodity);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.create),
          ],
        ),
        title: Text(commodity.name),
        subtitle: Text(commodity.price.toString()),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.blue,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        onTap: () {},
      ),
    );
  }
}
