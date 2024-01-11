// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WhoIAmType _$WhoIAmTypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$WhoIAmType {
  int? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nice_name')
  String? get niceName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhoIAmTypeCopyWith<WhoIAmType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhoIAmTypeCopyWith<$Res> {
  factory $WhoIAmTypeCopyWith(
          WhoIAmType value, $Res Function(WhoIAmType) then) =
      _$WhoIAmTypeCopyWithImpl<$Res, WhoIAmType>;
  @useResult
  $Res call(
      {int? code, String? name, @JsonKey(name: 'nice_name') String? niceName});
}

/// @nodoc
class _$WhoIAmTypeCopyWithImpl<$Res, $Val extends WhoIAmType>
    implements $WhoIAmTypeCopyWith<$Res> {
  _$WhoIAmTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? niceName = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      niceName: freezed == niceName
          ? _value.niceName
          : niceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeImplCopyWith<$Res> implements $WhoIAmTypeCopyWith<$Res> {
  factory _$$TypeImplCopyWith(
          _$TypeImpl value, $Res Function(_$TypeImpl) then) =
      __$$TypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? name, @JsonKey(name: 'nice_name') String? niceName});
}

/// @nodoc
class __$$TypeImplCopyWithImpl<$Res>
    extends _$WhoIAmTypeCopyWithImpl<$Res, _$TypeImpl>
    implements _$$TypeImplCopyWith<$Res> {
  __$$TypeImplCopyWithImpl(_$TypeImpl _value, $Res Function(_$TypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? niceName = freezed,
  }) {
    return _then(_$TypeImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      niceName: freezed == niceName
          ? _value.niceName
          : niceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeImpl implements _Type {
  _$TypeImpl({this.code, this.name, @JsonKey(name: 'nice_name') this.niceName});

  factory _$TypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeImplFromJson(json);

  @override
  final int? code;
  @override
  final String? name;
  @override
  @JsonKey(name: 'nice_name')
  final String? niceName;

  @override
  String toString() {
    return 'WhoIAmType(code: $code, name: $name, niceName: $niceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.niceName, niceName) ||
                other.niceName == niceName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, niceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeImplCopyWith<_$TypeImpl> get copyWith =>
      __$$TypeImplCopyWithImpl<_$TypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeImplToJson(
      this,
    );
  }
}

abstract class _Type implements WhoIAmType {
  factory _Type(
      {final int? code,
      final String? name,
      @JsonKey(name: 'nice_name') final String? niceName}) = _$TypeImpl;

  factory _Type.fromJson(Map<String, dynamic> json) = _$TypeImpl.fromJson;

  @override
  int? get code;
  @override
  String? get name;
  @override
  @JsonKey(name: 'nice_name')
  String? get niceName;
  @override
  @JsonKey(ignore: true)
  _$$TypeImplCopyWith<_$TypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
