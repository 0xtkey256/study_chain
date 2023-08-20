// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commodity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommodityEntity {
  /// 商品名
// @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// 値段
// @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommodityEntityCopyWith<CommodityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommodityEntityCopyWith<$Res> {
  factory $CommodityEntityCopyWith(
          CommodityEntity value, $Res Function(CommodityEntity) then) =
      _$CommodityEntityCopyWithImpl<$Res, CommodityEntity>;
  @useResult
  $Res call({String name, int price});
}

/// @nodoc
class _$CommodityEntityCopyWithImpl<$Res, $Val extends CommodityEntity>
    implements $CommodityEntityCopyWith<$Res> {
  _$CommodityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommodityEntityCopyWith<$Res>
    implements $CommodityEntityCopyWith<$Res> {
  factory _$$_CommodityEntityCopyWith(
          _$_CommodityEntity value, $Res Function(_$_CommodityEntity) then) =
      __$$_CommodityEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int price});
}

/// @nodoc
class __$$_CommodityEntityCopyWithImpl<$Res>
    extends _$CommodityEntityCopyWithImpl<$Res, _$_CommodityEntity>
    implements _$$_CommodityEntityCopyWith<$Res> {
  __$$_CommodityEntityCopyWithImpl(
      _$_CommodityEntity _value, $Res Function(_$_CommodityEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$_CommodityEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CommodityEntity extends _CommodityEntity {
  const _$_CommodityEntity({required this.name, required this.price})
      : super._();

  /// 商品名
// @JsonKey(name: "name")
  @override
  final String name;

  /// 値段
// @JsonKey(name: "price")
  @override
  final int price;

  @override
  String toString() {
    return 'CommodityEntity(name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommodityEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommodityEntityCopyWith<_$_CommodityEntity> get copyWith =>
      __$$_CommodityEntityCopyWithImpl<_$_CommodityEntity>(this, _$identity);
}

abstract class _CommodityEntity extends CommodityEntity {
  const factory _CommodityEntity(
      {required final String name,
      required final int price}) = _$_CommodityEntity;
  const _CommodityEntity._() : super._();

  @override

  /// 商品名
// @JsonKey(name: "name")
  String get name;
  @override

  /// 値段
// @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_CommodityEntityCopyWith<_$_CommodityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
