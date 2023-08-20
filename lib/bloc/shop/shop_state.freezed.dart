// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopState {
  ///
  ShopStatus? get status => throw _privateConstructorUsedError;

  ///
  List<CommodityEntity>? get commodities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call({ShopStatus? status, List<CommodityEntity>? commodities});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? commodities = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopStatus?,
      commodities: freezed == commodities
          ? _value.commodities
          : commodities // ignore: cast_nullable_to_non_nullable
              as List<CommodityEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$_ShopStateCopyWith(
          _$_ShopState value, $Res Function(_$_ShopState) then) =
      __$$_ShopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShopStatus? status, List<CommodityEntity>? commodities});
}

/// @nodoc
class __$$_ShopStateCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$_ShopState>
    implements _$$_ShopStateCopyWith<$Res> {
  __$$_ShopStateCopyWithImpl(
      _$_ShopState _value, $Res Function(_$_ShopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? commodities = freezed,
  }) {
    return _then(_$_ShopState(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShopStatus?,
      commodities: freezed == commodities
          ? _value._commodities
          : commodities // ignore: cast_nullable_to_non_nullable
              as List<CommodityEntity>?,
    ));
  }
}

/// @nodoc

class _$_ShopState extends _ShopState {
  const _$_ShopState({this.status, final List<CommodityEntity>? commodities})
      : _commodities = commodities,
        super._();

  ///
  @override
  final ShopStatus? status;

  ///
  final List<CommodityEntity>? _commodities;

  ///
  @override
  List<CommodityEntity>? get commodities {
    final value = _commodities;
    if (value == null) return null;
    if (_commodities is EqualUnmodifiableListView) return _commodities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._commodities, _commodities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_commodities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      __$$_ShopStateCopyWithImpl<_$_ShopState>(this, _$identity);
}

abstract class _ShopState extends ShopState {
  const factory _ShopState(
      {final ShopStatus? status,
      final List<CommodityEntity>? commodities}) = _$_ShopState;
  const _ShopState._() : super._();

  @override

  ///
  ShopStatus? get status;
  @override

  ///
  List<CommodityEntity>? get commodities;
  @override
  @JsonKey(ignore: true)
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}
