// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterError _$RegisterErrorFromJson(Map<String, dynamic> json) {
  return _RegisterError.fromJson(json);
}

/// @nodoc
mixin _$RegisterError {
  int? get status => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterErrorCopyWith<$Res> {
  factory $RegisterErrorCopyWith(
          RegisterError value, $Res Function(RegisterError) then) =
      _$RegisterErrorCopyWithImpl<$Res, RegisterError>;
  @useResult
  $Res call({int? status, bool? success, dynamic data});
}

/// @nodoc
class _$RegisterErrorCopyWithImpl<$Res, $Val extends RegisterError>
    implements $RegisterErrorCopyWith<$Res> {
  _$RegisterErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<$Res>
    implements $RegisterErrorCopyWith<$Res> {
  factory _$$RegisterErrorImplCopyWith(
          _$RegisterErrorImpl value, $Res Function(_$RegisterErrorImpl) then) =
      __$$RegisterErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? success, dynamic data});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<$Res>
    extends _$RegisterErrorCopyWithImpl<$Res, _$RegisterErrorImpl>
    implements _$$RegisterErrorImplCopyWith<$Res> {
  __$$RegisterErrorImplCopyWithImpl(
      _$RegisterErrorImpl _value, $Res Function(_$RegisterErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RegisterErrorImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterErrorImpl implements _RegisterError {
  _$RegisterErrorImpl({this.status, this.success, this.data});

  factory _$RegisterErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterErrorImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? success;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'RegisterError(status: $status, success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, success, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<_$RegisterErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterErrorImplToJson(
      this,
    );
  }
}

abstract class _RegisterError implements RegisterError {
  factory _RegisterError(
      {final int? status,
      final bool? success,
      final dynamic data}) = _$RegisterErrorImpl;

  factory _RegisterError.fromJson(Map<String, dynamic> json) =
      _$RegisterErrorImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get success;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
