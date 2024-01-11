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

WhoIAm _$WhoIAmFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$WhoIAm {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  List<WhoIAmTag>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_social_media')
  List<String>? get favoriteSocialMedia => throw _privateConstructorUsedError;
  int? get salary => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  WhoIAmType? get type => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhoIAmCopyWith<WhoIAm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhoIAmCopyWith<$Res> {
  factory $WhoIAmCopyWith(WhoIAm value, $Res Function(WhoIAm) then) =
      _$WhoIAmCopyWithImpl<$Res, WhoIAm>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? about,
      List<WhoIAmTag>? tags,
      @JsonKey(name: 'favorite_social_media') List<String>? favoriteSocialMedia,
      int? salary,
      String? email,
      @JsonKey(name: 'birth_date') String? birthDate,
      int? gender,
      WhoIAmType? type,
      String? avatar});

  $WhoIAmTypeCopyWith<$Res>? get type;
}

/// @nodoc
class _$WhoIAmCopyWithImpl<$Res, $Val extends WhoIAm>
    implements $WhoIAmCopyWith<$Res> {
  _$WhoIAmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? about = freezed,
    Object? tags = freezed,
    Object? favoriteSocialMedia = freezed,
    Object? salary = freezed,
    Object? email = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? type = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<WhoIAmTag>?,
      favoriteSocialMedia: freezed == favoriteSocialMedia
          ? _value.favoriteSocialMedia
          : favoriteSocialMedia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WhoIAmType?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WhoIAmTypeCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $WhoIAmTypeCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $WhoIAmCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? about,
      List<WhoIAmTag>? tags,
      @JsonKey(name: 'favorite_social_media') List<String>? favoriteSocialMedia,
      int? salary,
      String? email,
      @JsonKey(name: 'birth_date') String? birthDate,
      int? gender,
      WhoIAmType? type,
      String? avatar});

  @override
  $WhoIAmTypeCopyWith<$Res>? get type;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$WhoIAmCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? about = freezed,
    Object? tags = freezed,
    Object? favoriteSocialMedia = freezed,
    Object? salary = freezed,
    Object? email = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? type = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<WhoIAmTag>?,
      favoriteSocialMedia: freezed == favoriteSocialMedia
          ? _value._favoriteSocialMedia
          : favoriteSocialMedia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WhoIAmType?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.about,
      final List<WhoIAmTag>? tags,
      @JsonKey(name: 'favorite_social_media')
      final List<String>? favoriteSocialMedia,
      this.salary,
      this.email,
      @JsonKey(name: 'birth_date') this.birthDate,
      this.gender,
      this.type,
      this.avatar})
      : _tags = tags,
        _favoriteSocialMedia = favoriteSocialMedia;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? about;
  final List<WhoIAmTag>? _tags;
  @override
  List<WhoIAmTag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _favoriteSocialMedia;
  @override
  @JsonKey(name: 'favorite_social_media')
  List<String>? get favoriteSocialMedia {
    final value = _favoriteSocialMedia;
    if (value == null) return null;
    if (_favoriteSocialMedia is EqualUnmodifiableListView)
      return _favoriteSocialMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? salary;
  @override
  final String? email;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  final int? gender;
  @override
  final WhoIAmType? type;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'WhoIAm(id: $id, firstName: $firstName, lastName: $lastName, about: $about, tags: $tags, favoriteSocialMedia: $favoriteSocialMedia, salary: $salary, email: $email, birthDate: $birthDate, gender: $gender, type: $type, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._favoriteSocialMedia, _favoriteSocialMedia) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      about,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_favoriteSocialMedia),
      salary,
      email,
      birthDate,
      gender,
      type,
      avatar);

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

abstract class _Data implements WhoIAm {
  factory _Data(
      {final int? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? about,
      final List<WhoIAmTag>? tags,
      @JsonKey(name: 'favorite_social_media')
      final List<String>? favoriteSocialMedia,
      final int? salary,
      final String? email,
      @JsonKey(name: 'birth_date') final String? birthDate,
      final int? gender,
      final WhoIAmType? type,
      final String? avatar}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get about;
  @override
  List<WhoIAmTag>? get tags;
  @override
  @JsonKey(name: 'favorite_social_media')
  List<String>? get favoriteSocialMedia;
  @override
  int? get salary;
  @override
  String? get email;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  int? get gender;
  @override
  WhoIAmType? get type;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
