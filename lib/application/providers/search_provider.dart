import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifier/member_voucher_search/search_event.dart';
import '../notifier/member_voucher_search/search_notifier.dart';
import '../notifier/member_voucher_search/search_state.dart';
import '../notifier/project_search/search_event.dart';
import '../notifier/project_search/search_notifier.dart';
import '../notifier/project_search/search_state.dart';
import '../notifier/voucher_search/search_event.dart';
import '../notifier/voucher_search/search_notifier.dart';
import '../notifier/voucher_search/search_state.dart';
import 'api_provider.dart';

final searchMemberVoucherProvider = StateNotifierProvider.autoDispose<
    SearchMemberVoucherNotifier, SearchMemberVoucherState>(
  (ref) {
    final memberVoucherList = ref
        .watch(memberVoucherListFutureProvider)
        .whenOrNull(data: (data) => data);

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
        ref.watch(voucherListFutureProvider).whenOrNull(data: (data) => data);
    if (voucherList != null) {
      voucherList.removeWhere((item) => item.voucherAmount == 0);
    }
    return SearchVoucherNotifier()
      ..mapEventsToState(
        UpdateVoucherListItems(
          voucherList: voucherList ?? [],
        ),
      );
  },
);

final searchProjectProvider = StateNotifierProvider.autoDispose<
    SearchProjectNotifier, SearchProjectState>(
  (ref) {
    final projectList =
        ref.watch(projectListFutureProvider).whenOrNull(data: (data) => data);
    return SearchProjectNotifier()
      ..mapEventsToState(
        UpdateProjectListItems(
          projectList: projectList ?? [],
        ),
      );
  },
);
