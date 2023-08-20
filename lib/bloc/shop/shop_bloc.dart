import 'package:bloc/bloc.dart';
import 'package:study_chain/bloc/shop/shop_state.dart';
import 'package:study_chain/entity/commodity.dart';

class ShopBloc extends Cubit<ShopState> {
  ShopBloc()
      : super(
          const ShopState(),
        );

  @override
  String toString() => "";

  void renderCompleted() {
    emit(
      state.copyWith(
        status: ShopStatus.idle,
      ),
    );
  }

  void getCommodities() {
    emit(
      state.copyWith(
        status: ShopStatus.getCommoditiesSuccess,
        commodities: [
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
          CommodityEntity(name: "pencil", price: 10),
        ],
      ),
    );
  }
}
