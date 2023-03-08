// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallets _$$_WalletsFromJson(Map<String, dynamic> json) => _$_Wallets(
      totalXP: json['totalXP'] as int,
      totalPoint: json['totalPoint'] as int,
      wallets: (json['wallets'] as List<dynamic>)
          .map((e) => Wallet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WalletsToJson(_$_Wallets instance) =>
    <String, dynamic>{
      'totalXP': instance.totalXP,
      'totalPoint': instance.totalPoint,
      'wallets': instance.wallets,
    };

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      walletId: json['walletId'] as String,
      amount: json['amount'] as int,
      walletToken: json['walletToken'] as String,
      walletType: json['walletType'] as String,
      expiredDate: DateTime.parse(json['expiredDate'] as String),
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'walletId': instance.walletId,
      'amount': instance.amount,
      'walletToken': instance.walletToken,
      'walletType': instance.walletType,
      'expiredDate': instance.expiredDate.toIso8601String(),
    };