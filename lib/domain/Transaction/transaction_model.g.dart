// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      transactionId: json['transactionId'] as String,
      fromWalletId: json['fromWalletId'] as String,
      toWalletId: json['toWalletId'] as String,
      transactionType:
          $enumDecode(_$TransactionTypeEnumEnumMap, json['transactionType']),
      note: json['note'] as String?,
      token: $enumDecode(_$WalletTokenEnumEnumMap, json['token']),
      amount: (json['amount'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'fromWalletId': instance.fromWalletId,
      'toWalletId': instance.toWalletId,
      'transactionType':
          _$TransactionTypeEnumEnumMap[instance.transactionType]!,
      'note': instance.note,
      'token': _$WalletTokenEnumEnumMap[instance.token]!,
      'amount': instance.amount,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$TransactionTypeEnumEnumMap = {
  TransactionTypeEnum.projectSalary: 'projectSalary',
  TransactionTypeEnum.systemSalary: 'systemSalary',
  TransactionTypeEnum.walletExpire: 'walletExpire',
  TransactionTypeEnum.systemDepositToProject: 'systemDepositToProject',
  TransactionTypeEnum.sponsorDepositToProject: 'sponsorDepositToProject',
  TransactionTypeEnum.projectBonus: 'projectBonus',
  TransactionTypeEnum.projectToProject: 'projectToProject',
  TransactionTypeEnum.projectReturnToSystem: 'projectReturnToSystem',
  TransactionTypeEnum.buyVoucher: 'buyVoucher',
  TransactionTypeEnum.newAccount: 'newAccount',
};

const _$WalletTokenEnumEnumMap = {
  WalletTokenEnum.point: 'point',
  WalletTokenEnum.xp: 'xp',
};
