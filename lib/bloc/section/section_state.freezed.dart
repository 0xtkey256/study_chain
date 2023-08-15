// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectionState {
  ///
  SectionStatus? get status => throw _privateConstructorUsedError;

  /// Studyセクション回数
  int get studySectionCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionStateCopyWith<SectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionStateCopyWith<$Res> {
  factory $SectionStateCopyWith(
          SectionState value, $Res Function(SectionState) then) =
      _$SectionStateCopyWithImpl<$Res, SectionState>;
  @useResult
  $Res call({SectionStatus? status, int studySectionCount});
}

/// @nodoc
class _$SectionStateCopyWithImpl<$Res, $Val extends SectionState>
    implements $SectionStateCopyWith<$Res> {
  _$SectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? studySectionCount = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SectionStatus?,
      studySectionCount: null == studySectionCount
          ? _value.studySectionCount
          : studySectionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionStateCopyWith<$Res>
    implements $SectionStateCopyWith<$Res> {
  factory _$$_SectionStateCopyWith(
          _$_SectionState value, $Res Function(_$_SectionState) then) =
      __$$_SectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SectionStatus? status, int studySectionCount});
}

/// @nodoc
class __$$_SectionStateCopyWithImpl<$Res>
    extends _$SectionStateCopyWithImpl<$Res, _$_SectionState>
    implements _$$_SectionStateCopyWith<$Res> {
  __$$_SectionStateCopyWithImpl(
      _$_SectionState _value, $Res Function(_$_SectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? studySectionCount = null,
  }) {
    return _then(_$_SectionState(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SectionStatus?,
      studySectionCount: null == studySectionCount
          ? _value.studySectionCount
          : studySectionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SectionState extends _SectionState {
  const _$_SectionState({this.status, this.studySectionCount = 0}) : super._();

  ///
  @override
  final SectionStatus? status;

  /// Studyセクション回数
  @override
  @JsonKey()
  final int studySectionCount;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.studySectionCount, studySectionCount) ||
                other.studySectionCount == studySectionCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, studySectionCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionStateCopyWith<_$_SectionState> get copyWith =>
      __$$_SectionStateCopyWithImpl<_$_SectionState>(this, _$identity);
}

abstract class _SectionState extends SectionState {
  const factory _SectionState(
      {final SectionStatus? status,
      final int studySectionCount}) = _$_SectionState;
  const _SectionState._() : super._();

  @override

  ///
  SectionStatus? get status;
  @override

  /// Studyセクション回数
  int get studySectionCount;
  @override
  @JsonKey(ignore: true)
  _$$_SectionStateCopyWith<_$_SectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
