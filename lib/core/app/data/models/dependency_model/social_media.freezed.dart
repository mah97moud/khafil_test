// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialMedia _$SocialMediaFromJson(Map<String, dynamic> json) {
  return _SocialMedia.fromJson(json);
}

/// @nodoc
mixin _$SocialMedia {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaCopyWith<SocialMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaCopyWith<$Res> {
  factory $SocialMediaCopyWith(
          SocialMedia value, $Res Function(SocialMedia) then) =
      _$SocialMediaCopyWithImpl<$Res, SocialMedia>;
  @useResult
  $Res call({String value, String label});
}

/// @nodoc
class _$SocialMediaCopyWithImpl<$Res, $Val extends SocialMedia>
    implements $SocialMediaCopyWith<$Res> {
  _$SocialMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialMediaImplCopyWith<$Res>
    implements $SocialMediaCopyWith<$Res> {
  factory _$$SocialMediaImplCopyWith(
          _$SocialMediaImpl value, $Res Function(_$SocialMediaImpl) then) =
      __$$SocialMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String label});
}

/// @nodoc
class __$$SocialMediaImplCopyWithImpl<$Res>
    extends _$SocialMediaCopyWithImpl<$Res, _$SocialMediaImpl>
    implements _$$SocialMediaImplCopyWith<$Res> {
  __$$SocialMediaImplCopyWithImpl(
      _$SocialMediaImpl _value, $Res Function(_$SocialMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_$SocialMediaImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialMediaImpl implements _SocialMedia {
  _$SocialMediaImpl({this.value = '', this.label = ''});

  factory _$SocialMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialMediaImplFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String label;

  @override
  String toString() {
    return 'SocialMedia(value: $value, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaImplCopyWith<_$SocialMediaImpl> get copyWith =>
      __$$SocialMediaImplCopyWithImpl<_$SocialMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialMediaImplToJson(
      this,
    );
  }
}

abstract class _SocialMedia implements SocialMedia {
  factory _SocialMedia({final String value, final String label}) =
      _$SocialMediaImpl;

  factory _SocialMedia.fromJson(Map<String, dynamic> json) =
      _$SocialMediaImpl.fromJson;

  @override
  String get value;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$SocialMediaImplCopyWith<_$SocialMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
