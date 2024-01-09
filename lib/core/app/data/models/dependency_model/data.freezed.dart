// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Type> get types => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_media')
  List<SocialMedia> get socialMedia => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {List<Type> types,
      List<Tag> tags,
      @JsonKey(name: 'social_media') List<SocialMedia> socialMedia});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? tags = null,
    Object? socialMedia = null,
  }) {
    return _then(_value.copyWith(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      socialMedia: null == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Type> types,
      List<Tag> tags,
      @JsonKey(name: 'social_media') List<SocialMedia> socialMedia});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? tags = null,
    Object? socialMedia = null,
  }) {
    return _then(_$DataImpl(
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      socialMedia: null == socialMedia
          ? _value._socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {final List<Type> types = const [],
      final List<Tag> tags = const [],
      @JsonKey(name: 'social_media')
      final List<SocialMedia> socialMedia = const []})
      : _types = types,
        _tags = tags,
        _socialMedia = socialMedia;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Type> _types;
  @override
  @JsonKey()
  List<Type> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<Tag> _tags;
  @override
  @JsonKey()
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<SocialMedia> _socialMedia;
  @override
  @JsonKey(name: 'social_media')
  List<SocialMedia> get socialMedia {
    if (_socialMedia is EqualUnmodifiableListView) return _socialMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialMedia);
  }

  @override
  String toString() {
    return 'Data(types: $types, tags: $tags, socialMedia: $socialMedia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._socialMedia, _socialMedia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_socialMedia));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
          {final List<Type> types,
          final List<Tag> tags,
          @JsonKey(name: 'social_media') final List<SocialMedia> socialMedia}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<Type> get types;
  @override
  List<Tag> get tags;
  @override
  @JsonKey(name: 'social_media')
  List<SocialMedia> get socialMedia;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
