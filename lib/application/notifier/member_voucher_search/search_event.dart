import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
part 'search_event.freezed.dart';

@freezed
class SearchMemberVoucherEvent with _$SearchEvent {
  const factory SearchMemberVoucherEvent.searchedMemberVoucherTextChanged(
      {required String text}) = SearchedMemberVoucherTextChanged;
  const factory SearchMemberVoucherEvent.updateMemberVoucherListItems(
          {required List<MemberVoucher> memberVoucherList}) =
      UpdateMemberVoucherListItems;
}
