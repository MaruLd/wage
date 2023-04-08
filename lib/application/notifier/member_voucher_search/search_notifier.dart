import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/application/notifier/member_voucher_search/search_event.dart';
import 'package:wage/application/notifier/member_voucher_search/search_state.dart';
class SearchMemberVoucherNotifier extends StateNotifier<SearchMemberVoucherState> {
  SearchMemberVoucherNotifier() : super(SearchMemberVoucherState.empty());

  void mapEventsToState(SearchMemberVoucherEvent event) {
    event.map(
      searchedMemberVoucherTextChanged: (searchedTextChangedEvent) {
        final memberVoucherList = [...state.memberVoucherList];
        final searchedMemberVoucherList = memberVoucherList
            .where((voucher) => voucher.voucher.voucherName!
                .toLowerCase()
                .contains(
                    searchedTextChangedEvent.text.toLowerCase().trimLeft()))
            .toList();

        state = state.copyWith(memberVoucherList: searchedMemberVoucherList);
      },
      updateMemberVoucherListItems: (updateListItemsEvent) {
        state = state.copyWith(
          memberVoucherList: updateListItemsEvent.memberVoucherList,
        );
      },
    );
  }
}
