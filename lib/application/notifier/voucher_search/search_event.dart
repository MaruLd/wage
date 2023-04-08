import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
part 'search_event.freezed.dart';

@freezed
class SearchVoucherEvent with _$SearchEvent {
  const factory SearchVoucherEvent.searchedVoucherTextChanged(
      {required String text}) = SearchedVoucherTextChanged;
  const factory SearchVoucherEvent.updateVoucherListItems(
      {required List<Voucher> voucherList}) = UpdateVoucherListItems;
}
