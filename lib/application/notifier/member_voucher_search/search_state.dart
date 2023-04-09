import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
part 'search_state.freezed.dart';

@freezed
class SearchMemberVoucherState with _$SearchMemberVoucherState {
  factory SearchMemberVoucherState({
    required List<MemberVoucher> memberVoucherList,
  }) = _SearchState;
  const SearchMemberVoucherState._();

  factory SearchMemberVoucherState.empty() => SearchMemberVoucherState(
        memberVoucherList: [],
      );
}
