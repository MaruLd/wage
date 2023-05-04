import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/application/notifier/voucher_search/search_event.dart';
import 'package:wage/application/notifier/voucher_search/search_state.dart';

class SearchVoucherNotifier extends StateNotifier<SearchVoucherState> {
  SearchVoucherNotifier() : super(SearchVoucherState.empty());

  void mapEventsToState(SearchVoucherEvent event) {
    event.map(
      searchedVoucherTextChanged: (searchedTextChangedEvent) {
        final voucherList = [...state.voucherList];
        final searchedVoucherList = voucherList
            .where((voucher) => voucher.voucherName!.toLowerCase().contains(
                searchedTextChangedEvent.text.toLowerCase().trimLeft()))
            .toList();

        state = state.copyWith(voucherList: searchedVoucherList);
      },
      filteredVoucherChanged: (filteredVoucherChangedEvent) {
        final voucherList = [...state.voucherList];
        final filteredVoucherList = voucherList
            .where((voucher) =>
                voucher.voucherType == filteredVoucherChangedEvent.type)
            .toList();

        state = state.copyWith(voucherList: filteredVoucherList);
      },
      updateVoucherListItems: (updateListItemsEvent) {
        state = state.copyWith(
          voucherList: updateListItemsEvent.voucherList,
        );
      },
    );
  }
}
