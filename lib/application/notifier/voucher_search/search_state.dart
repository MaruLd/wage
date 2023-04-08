import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
part 'search_state.freezed.dart';

@freezed
class SearchVoucherState with _$SearchState {
  factory SearchVoucherState({
    required List<Voucher> voucherList,
  }) = _SearchState;
  const SearchVoucherState._();

  factory SearchVoucherState.empty() => SearchVoucherState(
        voucherList: [],
      );
}
