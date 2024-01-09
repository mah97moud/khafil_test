// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dependency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DependencyModel _$DependencyModelFromJson(Map<String, dynamic> json) {
  return _DependencyModel.fromJson(json);
}

/// @nodoc
mixin _$DependencyModel {
  int get status => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DependencyModelCopyWith<DependencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DependencyModelCopyWith<$Res> {
  factory $DependencyModelCopyWith(
          DependencyModel value, $Res Function(DependencyModel) then) =
      _$DependencyModelCopyWithImpl<$Res, DependencyModel>;
  @useResult
  $Res call({int status, bool success, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$DependencyModelCopyWithImpl<$Res, $Val extends DependencyModel>
    implements $DependencyModelCopyWith<$Res> {
  _$DependencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DependencyModelImplCopyWith<$Res>
    implements $DependencyModelCopyWith<$Res> {
  factory _$$DependencyModelImplCopyWith(_$DependencyModelImpl value,
          $Res Function(_$DependencyModelImpl) then) =
      __$$DependencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, bool success, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DependencyModelImplCopyWithImpl<$Res>
    extends _$DependencyModelCopyWithImpl<$Res, _$DependencyModelImpl>
    implements _$$DependencyModelImplCopyWith<$Res> {
  __$$DependencyModelImplCopyWithImpl(
      _$DependencyModelImpl _value, $Res Function(_$DependencyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$DependencyModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DependencyModelImpl implements _DependencyModel {
  _$DependencyModelImpl(
      {this.status = 0, this.success = true, required this.data});

  factory _$DependencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DependencyModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final bool success;
  @override
  final Data data;

  @override
  String toString() {
    return 'DependencyModel(status: $status, success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DependencyModelImpl &&
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
  _$$DependencyModelImplCopyWith<_$DependencyModelImpl> get copyWith =>
      __$$DependencyModelImplCopyWithImpl<_$DependencyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DependencyModelImplToJson(
      this,
    );
  }
}

abstract class _DependencyModel implements DependencyModel {
  factory _DependencyModel(
      {final int status,
      final bool success,
      required final Data data}) = _$DependencyModelImpl;

  factory _DependencyModel.fromJson(Map<String, dynamic> json) =
      _$DependencyModelImpl.fromJson;

  @override
  int get status;
  @override
  bool get success;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$DependencyModelImplCopyWith<_$DependencyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
