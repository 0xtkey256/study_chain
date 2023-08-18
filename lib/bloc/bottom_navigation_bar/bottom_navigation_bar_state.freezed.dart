// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationBarState {
  ///
  BottomNavigationBarStatus? get status => throw _privateConstructorUsedError;

  ///
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationBarStateCopyWith<BottomNavigationBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationBarStateCopyWith<$Res> {
  factory $BottomNavigationBarStateCopyWith(BottomNavigationBarState value,
          $Res Function(BottomNavigationBarState) then) =
      _$BottomNavigationBarStateCopyWithImpl<$Res, BottomNavigationBarState>;
  @useResult
  $Res call({BottomNavigationBarStatus? status, int index});
}

/// @nodoc
class _$BottomNavigationBarStateCopyWithImpl<$Res,
        $Val extends BottomNavigationBarState>
    implements $BottomNavigationBarStateCopyWith<$Res> {
  _$BottomNavigationBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarStatus?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavigationBarStateCopyWith<$Res>
    implements $BottomNavigationBarStateCopyWith<$Res> {
  factory _$$_BottomNavigationBarStateCopyWith(
          _$_BottomNavigationBarState value,
          $Res Function(_$_BottomNavigationBarState) then) =
      __$$_BottomNavigationBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BottomNavigationBarStatus? status, int index});
}

/// @nodoc
class __$$_BottomNavigationBarStateCopyWithImpl<$Res>
    extends _$BottomNavigationBarStateCopyWithImpl<$Res,
        _$_BottomNavigationBarState>
    implements _$$_BottomNavigationBarStateCopyWith<$Res> {
  __$$_BottomNavigationBarStateCopyWithImpl(_$_BottomNavigationBarState _value,
      $Res Function(_$_BottomNavigationBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? index = null,
  }) {
    return _then(_$_BottomNavigationBarState(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BottomNavigationBarStatus?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationBarState extends _BottomNavigationBarState {
  const _$_BottomNavigationBarState({this.status, this.index = 0}) : super._();

  ///
  @override
  final BottomNavigationBarStatus? status;

  ///
  @override
  @JsonKey()
  final int index;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationBarState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavigationBarStateCopyWith<_$_BottomNavigationBarState>
      get copyWith => __$$_BottomNavigationBarStateCopyWithImpl<
          _$_BottomNavigationBarState>(this, _$identity);
}

abstract class _BottomNavigationBarState extends BottomNavigationBarState {
  const factory _BottomNavigationBarState(
      {final BottomNavigationBarStatus? status,
      final int index}) = _$_BottomNavigationBarState;
  const _BottomNavigationBarState._() : super._();

  @override

  ///
  BottomNavigationBarStatus? get status;
  @override

  ///
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationBarStateCopyWith<_$_BottomNavigationBarState>
      get copyWith => throw _privateConstructorUsedError;
}
