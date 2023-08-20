import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study_chain/entity/commodity.dart';

part 'shop_state.freezed.dart';

enum ShopStatus {
  getCommoditiesSuccess("商品取得成功"),
  idle('待機');

  const ShopStatus(this.state);
  final String state;
}

@Freezed()
class ShopState with _$ShopState {
  const ShopState._();

  const factory ShopState({
    ///
    ShopStatus? status,

    ///
    List<CommodityEntity>? commodities,
  }) = _ShopState;

  @override
  String toString() => "[ShopState] $status";
}
