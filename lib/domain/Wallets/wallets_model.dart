import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallets_model.freezed.dart';
part 'wallets_model.g.dart';

@freezed
class Wallets with _$Wallets {
  const Wallets._();
  factory Wallets({
    required int totalXP,
    required int totalPoint,
    required List<Wallet> wallets,
  }) = _Wallets;
  factory Wallets.fromJson(Map<String, dynamic> json) =>
      _$WalletsFromJson(json);
}

@freezed
class Wallet with _$Wallet {
  const Wallet._();
  factory Wallet({
    required String walletId,
    required int amount,
    required WalletTokenEnum walletToken,
    required WalletTypeEnum walletType,
    String? walletTag,
    required DateTime expiredDate,
  }) = _Wallet;
  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}

enum WalletTokenEnum {
  @JsonValue("point")
  point,
  @JsonValue("xp")
  xp,
}

enum WalletTypeEnum {
  @JsonValue("hot")
  hot,
  @JsonValue("cold")
  cold,
}
