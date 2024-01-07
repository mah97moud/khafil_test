// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DioFailure _$DioFailureFromJson(Map<String, dynamic> json) {
  return _DioFailure.fromJson(json);
}

/// @nodoc
mixin _$DioFailure {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DioFailureCopyWith<DioFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DioFailureCopyWith<$Res> {
  factory $DioFailureCopyWith(
          DioFailure value, $Res Function(DioFailure) then) =
      _$DioFailureCopyWithImpl<$Res, DioFailure>;
  @useResult
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$DioFailureCopyWithImpl<$Res, $Val extends DioFailure>
    implements $DioFailureCopyWith<$Res> {
  _$DioFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DioFailureImplCopyWith<$Res>
    implements $DioFailureCopyWith<$Res> {
  factory _$$DioFailureImplCopyWith(
          _$DioFailureImpl value, $Res Function(_$DioFailureImpl) then) =
      __$$DioFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$DioFailureImplCopyWithImpl<$Res>
    extends _$DioFailureCopyWithImpl<$Res, _$DioFailureImpl>
    implements _$$DioFailureImplCopyWith<$Res> {
  __$$DioFailureImplCopyWithImpl(
      _$DioFailureImpl _value, $Res Function(_$DioFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$DioFailureImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DioFailureImpl implements _DioFailure {
  _$DioFailureImpl({this.statusCode = 200, this.message = ''});

  factory _$DioFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$DioFailureImplFromJson(json);

  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'DioFailure(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DioFailureImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DioFailureImplCopyWith<_$DioFailureImpl> get copyWith =>
      __$$DioFailureImplCopyWithImpl<_$DioFailureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DioFailureImplToJson(
      this,
    );
  }
}

abstract class _DioFailure implements DioFailure {
  factory _DioFailure({final int statusCode, final String message}) =
      _$DioFailureImpl;

  factory _DioFailure.fromJson(Map<String, dynamic> json) =
      _$DioFailureImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DioFailureImplCopyWith<_$DioFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
