import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifier/member_voucher_search/search_event.dart';
import '../notifier/member_voucher_search/search_notifier.dart';
import '../notifier/member_voucher_search/search_state.dart';
import '../notifier/voucher_search/search_event.dart';
import '../notifier/voucher_search/search_notifier.dart';
import '../notifier/voucher_search/search_state.dart';
import 'api_provider.dart';

final searchMemberVoucherProvider = StateNotifierProvider.autoDispose<
    SearchMemberVoucherNotifier, SearchMemberVoucherState>(
  (ref) {
    final memberVoucherList =
        ref.watch(memberVoucherFutureProvider).whenOrNull(data: (data) => data);

    return SearchMemberVoucherNotifier()
      ..mapEventsToState(
        UpdateMemberVoucherListItems(
          memberVoucherList: memberVoucherList ?? [],
        ),
      );
  },
);

final searchVoucherProvider = StateNotifierProvider.autoDispose<
    SearchVoucherNotifier, SearchVoucherState>(
  (ref) {
    final voucherList =
        ref.watch(voucherFutureProvider).whenOrNull(data: (data) => data);

    return SearchVoucherNotifier()
      ..mapEventsToState(
        UpdateVoucherListItems(
          voucherList: voucherList ?? [],
        ),
      );
  },
);
