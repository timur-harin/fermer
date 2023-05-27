import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required int id,
    required String name,
    required double costRetail,
    double? costWholesale,
    DateTime? completedDate,
    required String description,
    required User fermer,
    required double number,
    double? numberForWholesale,
    required String picture,
    DateTime? willExpired,
    required bool isSubscribed,
    double? numberForMonthSubscriptions,
  }) = _Item;
}
