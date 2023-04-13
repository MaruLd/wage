// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallets _$$_WalletsFromJson(Map<String, dynamic> json) => _$_Wallets(
      totalXP: (json['totalXP'] as num).toDouble(),
      totalPoint: (json['totalPoint'] as num).toDouble(),
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
      amount: (json['amount'] as num).toDouble(),
      walletToken: $enumDecode(_$WalletTokenEnumEnumMap, json['walletToken']),
      walletType: $enumDecode(_$WalletTypeEnumEnumMap, json['walletType']),
      walletTag: json['walletTag'] as String?,
      expiredDate: DateTime.parse(json['expiredDate'] as String),
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'walletId': instance.walletId,
      'amount': instance.amount,
      'walletToken': _$WalletTokenEnumEnumMap[instance.walletToken]!,
      'walletType': _$WalletTypeEnumEnumMap[instance.walletType]!,
      'walletTag': instance.walletTag,
      'expiredDate': instance.expiredDate.toIso8601String(),
    };

const _$WalletTokenEnumEnumMap = {
  WalletTokenEnum.point: 'point',
  WalletTokenEnum.xp: 'xp',
};

const _$WalletTypeEnumEnumMap = {
  WalletTypeEnum.hot: 'hot',
  WalletTypeEnum.cold: 'cold',
};
