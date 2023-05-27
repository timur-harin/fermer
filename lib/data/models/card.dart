import 'package:freezed_annotation/freezed_annotation.dart';
part 'card.freezed.dart';

@freezed
class Card with _$Card {
  const factory Card(
      {required int id,
      required String number,
      required String name,
      required DateTime date,
      required String cvc}) = _Card;
}
