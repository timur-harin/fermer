import 'package:freezed_annotation/freezed_annotation.dart';

import 'card.dart';
part 'user.freezed.dart';

enum UserType { FM, BY, AD }

@freezed
class User with _$User{
  const factory User({
    required int id,
    required String name,
    required UserType role,
    String? address,
    required String phone,
    required String email,
    required String password,
    Card? card,
  }) = _User;

}