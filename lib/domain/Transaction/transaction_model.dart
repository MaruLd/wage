import 'package:freezed_annotation/freezed_annotation.dart';

import '../Wallets/wallets_model.dart';
part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class Transaction with _$Transaction {
  const Transaction._();
  factory Transaction({
    required String transactionId,
    required String fromWalletId,
    required String toWalletId,
    required TransactionTypeEnum transactionType,
    String? note,
    required WalletTokenEnum token,
    required double amount,
    required DateTime createdAt,
  }) = _Transaction;
  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

enum TransactionTypeEnum {
  @JsonValue("projectSalary")
  projectSalary,
  @JsonValue("systemSalary")
  systemSalary,
  @JsonValue("walletExpire")
  walletExpire,
  @JsonValue("systemDepositToProject")
  systemDepositToProject,
  @JsonValue("sponsorDepositToProject")
  sponsorDepositToProject,
  @JsonValue("projectBonus")
  projectBonus,
  @JsonValue("projectToProject")
  projectToProject,
  @JsonValue("projectReturnToSystem")
  projectReturnToSystem,
  @JsonValue("buyVoucher")
  buyVoucher,
  @JsonValue("newAccount")
  newAccount,
}
