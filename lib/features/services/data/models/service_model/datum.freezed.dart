// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Service {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_image')
  String? get mainImage => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  dynamic get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_after_discount')
  int? get priceAfterDiscount => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  int? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_sales_count')
  int? get completedSalesCount => throw _privateConstructorUsedError;
  bool? get recommended => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'main_image') String? mainImage,
      int? price,
      dynamic discount,
      @JsonKey(name: 'price_after_discount') int? priceAfterDiscount,
      String? title,
      @JsonKey(name: 'average_rating') int? averageRating,
      @JsonKey(name: 'completed_sales_count') int? completedSalesCount,
      bool? recommended});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mainImage = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? priceAfterDiscount = freezed,
    Object? title = freezed,
    Object? averageRating = freezed,
    Object? completedSalesCount = freezed,
    Object? recommended = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priceAfterDiscount: freezed == priceAfterDiscount
          ? _value.priceAfterDiscount
          : priceAfterDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      completedSalesCount: freezed == completedSalesCount
          ? _value.completedSalesCount
          : completedSalesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'main_image') String? mainImage,
      int? price,
      dynamic discount,
      @JsonKey(name: 'price_after_discount') int? priceAfterDiscount,
      String? title,
      @JsonKey(name: 'average_rating') int? averageRating,
      @JsonKey(name: 'completed_sales_count') int? completedSalesCount,
      bool? recommended});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mainImage = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? priceAfterDiscount = freezed,
    Object? title = freezed,
    Object? averageRating = freezed,
    Object? completedSalesCount = freezed,
    Object? recommended = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priceAfterDiscount: freezed == priceAfterDiscount
          ? _value.priceAfterDiscount
          : priceAfterDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      completedSalesCount: freezed == completedSalesCount
          ? _value.completedSalesCount
          : completedSalesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  _$DatumImpl(
      {this.id,
      @JsonKey(name: 'main_image') this.mainImage,
      this.price,
      this.discount,
      @JsonKey(name: 'price_after_discount') this.priceAfterDiscount,
      this.title,
      @JsonKey(name: 'average_rating') this.averageRating,
      @JsonKey(name: 'completed_sales_count') this.completedSalesCount,
      this.recommended});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'main_image')
  final String? mainImage;
  @override
  final int? price;
  @override
  final dynamic discount;
  @override
  @JsonKey(name: 'price_after_discount')
  final int? priceAfterDiscount;
  @override
  final String? title;
  @override
  @JsonKey(name: 'average_rating')
  final int? averageRating;
  @override
  @JsonKey(name: 'completed_sales_count')
  final int? completedSalesCount;
  @override
  final bool? recommended;

  @override
  String toString() {
    return 'Service(id: $id, mainImage: $mainImage, price: $price, discount: $discount, priceAfterDiscount: $priceAfterDiscount, title: $title, averageRating: $averageRating, completedSalesCount: $completedSalesCount, recommended: $recommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            (identical(other.priceAfterDiscount, priceAfterDiscount) ||
                other.priceAfterDiscount == priceAfterDiscount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.completedSalesCount, completedSalesCount) ||
                other.completedSalesCount == completedSalesCount) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mainImage,
      price,
      const DeepCollectionEquality().hash(discount),
      priceAfterDiscount,
      title,
      averageRating,
      completedSalesCount,
      recommended);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Service {
  factory _Datum(
      {final int? id,
      @JsonKey(name: 'main_image') final String? mainImage,
      final int? price,
      final dynamic discount,
      @JsonKey(name: 'price_after_discount') final int? priceAfterDiscount,
      final String? title,
      @JsonKey(name: 'average_rating') final int? averageRating,
      @JsonKey(name: 'completed_sales_count') final int? completedSalesCount,
      final bool? recommended}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'main_image')
  String? get mainImage;
  @override
  int? get price;
  @override
  dynamic get discount;
  @override
  @JsonKey(name: 'price_after_discount')
  int? get priceAfterDiscount;
  @override
  String? get title;
  @override
  @JsonKey(name: 'average_rating')
  int? get averageRating;
  @override
  @JsonKey(name: 'completed_sales_count')
  int? get completedSalesCount;
  @override
  bool? get recommended;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
