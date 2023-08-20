import 'package:freezed_annotation/freezed_annotation.dart';

part 'commodity.freezed.dart';
// part 'commodity_entity.g.dart';

@Freezed()
class CommodityEntity with _$CommodityEntity {
  const CommodityEntity._();

  const factory CommodityEntity({
    /// 商品名
    // @JsonKey(name: "name")
    required String name,

    /// 値段
    // @JsonKey(name: "price")
    required int price,
  }) = _CommodityEntity;

  // factory CommodityEntity.fromJson(Map<String, Object?> json) => _$CommodityEntityFromJson(json);
  //
  // factory CommodityEntity.fromSnapshot(DocumentSnapshot<Map<String, dynamic>?> snapshot) =>
  //     CommodityEntity.fromJson(snapshot.data()!);
}
