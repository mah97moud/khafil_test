// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'who_i_am_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WhoIAmModel _$WhoIAmModelFromJson(Map<String, dynamic> json) {
  return _WhoIAmModel.fromJson(json);
}

/// @nodoc
mixin _$WhoIAmModel {
  int? get status => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  WhoIAm? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhoIAmModelCopyWith<WhoIAmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhoIAmModelCopyWith<$Res> {
  factory $WhoIAmModelCopyWith(
          WhoIAmModel value, $Res Function(WhoIAmModel) then) =
      _$WhoIAmModelCopyWithImpl<$Res, WhoIAmModel>;
  @useResult
  $Res call({int? status, bool? success, WhoIAm? data});

  $WhoIAmCopyWith<$Res>? get data;
}

/// @nodoc
class _$WhoIAmModelCopyWithImpl<$Res, $Val extends WhoIAmModel>
    implements $WhoIAmModelCopyWith<$Res> {
  _$WhoIAmModelCopyWithImpl(this._value, this._then);

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
              as WhoIAm?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WhoIAmCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WhoIAmCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WhoIAmModelImplCopyWith<$Res>
    implements $WhoIAmModelCopyWith<$Res> {
  factory _$$WhoIAmModelImplCopyWith(
          _$WhoIAmModelImpl value, $Res Function(_$WhoIAmModelImpl) then) =
      __$$WhoIAmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, bool? success, WhoIAm? data});

  @override
  $WhoIAmCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WhoIAmModelImplCopyWithImpl<$Res>
    extends _$WhoIAmModelCopyWithImpl<$Res, _$WhoIAmModelImpl>
    implements _$$WhoIAmModelImplCopyWith<$Res> {
  __$$WhoIAmModelImplCopyWithImpl(
      _$WhoIAmModelImpl _value, $Res Function(_$WhoIAmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WhoIAmModelImpl(
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
              as WhoIAm?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhoIAmModelImpl implements _WhoIAmModel {
  _$WhoIAmModelImpl({this.status, this.success, this.data});

  factory _$WhoIAmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhoIAmModelImplFromJson(json);

  @override
  final int? status;
  @override
  final bool? success;
  @override
  final WhoIAm? data;

  @override
  String toString() {
    return 'WhoIAmModel(status: $status, success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhoIAmModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhoIAmModelImplCopyWith<_$WhoIAmModelImpl> get copyWith =>
      __$$WhoIAmModelImplCopyWithImpl<_$WhoIAmModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhoIAmModelImplToJson(
      this,
    );
  }
}

abstract class _WhoIAmModel implements WhoIAmModel {
  factory _WhoIAmModel(
      {final int? status,
      final bool? success,
      final WhoIAm? data}) = _$WhoIAmModelImpl;

  factory _WhoIAmModel.fromJson(Map<String, dynamic> json) =
      _$WhoIAmModelImpl.fromJson;

  @override
  int? get status;
  @override
  bool? get success;
  @override
  WhoIAm? get data;
  @override
  @JsonKey(ignore: true)
  _$$WhoIAmModelImplCopyWith<_$WhoIAmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
