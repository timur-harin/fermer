// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Item {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get costRetail => throw _privateConstructorUsedError;
  double? get costWholesale => throw _privateConstructorUsedError;
  DateTime? get completedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  User get fermer => throw _privateConstructorUsedError;
  double get number => throw _privateConstructorUsedError;
  double? get numberForWholesale => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  DateTime? get willExpired => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;
  double? get numberForMonthSubscriptions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {int id,
      String name,
      double costRetail,
      double? costWholesale,
      DateTime? completedDate,
      String description,
      User fermer,
      double number,
      double? numberForWholesale,
      String picture,
      DateTime? willExpired,
      bool isSubscribed,
      double? numberForMonthSubscriptions});

  $UserCopyWith<$Res> get fermer;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? costRetail = null,
    Object? costWholesale = freezed,
    Object? completedDate = freezed,
    Object? description = null,
    Object? fermer = null,
    Object? number = null,
    Object? numberForWholesale = freezed,
    Object? picture = null,
    Object? willExpired = freezed,
    Object? isSubscribed = null,
    Object? numberForMonthSubscriptions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      costRetail: null == costRetail
          ? _value.costRetail
          : costRetail // ignore: cast_nullable_to_non_nullable
              as double,
      costWholesale: freezed == costWholesale
          ? _value.costWholesale
          : costWholesale // ignore: cast_nullable_to_non_nullable
              as double?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fermer: null == fermer
          ? _value.fermer
          : fermer // ignore: cast_nullable_to_non_nullable
              as User,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      numberForWholesale: freezed == numberForWholesale
          ? _value.numberForWholesale
          : numberForWholesale // ignore: cast_nullable_to_non_nullable
              as double?,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      willExpired: freezed == willExpired
          ? _value.willExpired
          : willExpired // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      numberForMonthSubscriptions: freezed == numberForMonthSubscriptions
          ? _value.numberForMonthSubscriptions
          : numberForMonthSubscriptions // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get fermer {
    return $UserCopyWith<$Res>(_value.fermer, (value) {
      return _then(_value.copyWith(fermer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double costRetail,
      double? costWholesale,
      DateTime? completedDate,
      String description,
      User fermer,
      double number,
      double? numberForWholesale,
      String picture,
      DateTime? willExpired,
      bool isSubscribed,
      double? numberForMonthSubscriptions});

  @override
  $UserCopyWith<$Res> get fermer;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? costRetail = null,
    Object? costWholesale = freezed,
    Object? completedDate = freezed,
    Object? description = null,
    Object? fermer = null,
    Object? number = null,
    Object? numberForWholesale = freezed,
    Object? picture = null,
    Object? willExpired = freezed,
    Object? isSubscribed = null,
    Object? numberForMonthSubscriptions = freezed,
  }) {
    return _then(_$_Item(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      costRetail: null == costRetail
          ? _value.costRetail
          : costRetail // ignore: cast_nullable_to_non_nullable
              as double,
      costWholesale: freezed == costWholesale
          ? _value.costWholesale
          : costWholesale // ignore: cast_nullable_to_non_nullable
              as double?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fermer: null == fermer
          ? _value.fermer
          : fermer // ignore: cast_nullable_to_non_nullable
              as User,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      numberForWholesale: freezed == numberForWholesale
          ? _value.numberForWholesale
          : numberForWholesale // ignore: cast_nullable_to_non_nullable
              as double?,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      willExpired: freezed == willExpired
          ? _value.willExpired
          : willExpired // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      numberForMonthSubscriptions: freezed == numberForMonthSubscriptions
          ? _value.numberForMonthSubscriptions
          : numberForMonthSubscriptions // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Item implements _Item {
  const _$_Item(
      {required this.id,
      required this.name,
      required this.costRetail,
      this.costWholesale,
      this.completedDate,
      required this.description,
      required this.fermer,
      required this.number,
      this.numberForWholesale,
      required this.picture,
      this.willExpired,
      required this.isSubscribed,
      this.numberForMonthSubscriptions});

  @override
  final int id;
  @override
  final String name;
  @override
  final double costRetail;
  @override
  final double? costWholesale;
  @override
  final DateTime? completedDate;
  @override
  final String description;
  @override
  final User fermer;
  @override
  final double number;
  @override
  final double? numberForWholesale;
  @override
  final String picture;
  @override
  final DateTime? willExpired;
  @override
  final bool isSubscribed;
  @override
  final double? numberForMonthSubscriptions;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, costRetail: $costRetail, costWholesale: $costWholesale, completedDate: $completedDate, description: $description, fermer: $fermer, number: $number, numberForWholesale: $numberForWholesale, picture: $picture, willExpired: $willExpired, isSubscribed: $isSubscribed, numberForMonthSubscriptions: $numberForMonthSubscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.costRetail, costRetail) ||
                other.costRetail == costRetail) &&
            (identical(other.costWholesale, costWholesale) ||
                other.costWholesale == costWholesale) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fermer, fermer) || other.fermer == fermer) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberForWholesale, numberForWholesale) ||
                other.numberForWholesale == numberForWholesale) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.willExpired, willExpired) ||
                other.willExpired == willExpired) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.numberForMonthSubscriptions,
                    numberForMonthSubscriptions) ||
                other.numberForMonthSubscriptions ==
                    numberForMonthSubscriptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      costRetail,
      costWholesale,
      completedDate,
      description,
      fermer,
      number,
      numberForWholesale,
      picture,
      willExpired,
      isSubscribed,
      numberForMonthSubscriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(
      {required final int id,
      required final String name,
      required final double costRetail,
      final double? costWholesale,
      final DateTime? completedDate,
      required final String description,
      required final User fermer,
      required final double number,
      final double? numberForWholesale,
      required final String picture,
      final DateTime? willExpired,
      required final bool isSubscribed,
      final double? numberForMonthSubscriptions}) = _$_Item;

  @override
  int get id;
  @override
  String get name;
  @override
  double get costRetail;
  @override
  double? get costWholesale;
  @override
  DateTime? get completedDate;
  @override
  String get description;
  @override
  User get fermer;
  @override
  double get number;
  @override
  double? get numberForWholesale;
  @override
  String get picture;
  @override
  DateTime? get willExpired;
  @override
  bool get isSubscribed;
  @override
  double? get numberForMonthSubscriptions;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
