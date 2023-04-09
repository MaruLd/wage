import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/navigation.dart';
import 'package:wage/presentation/pages/profile/components/profile_edit_button.dart';
import 'package:wage/presentation/pages/profile/components/profile_row.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/shimmer_list.dart';

class ProfileBody extends ConsumerWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userFutureProvider);
    return Container(
        width: 340,
        child: userData.when(
            data: (data) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EditProfile(),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileRow(
                      icon: FaIcon(FontAwesomeIcons.phone,
                          color: global.primary2, size: 18),
                      name: 'Điện thoại liên hệ',
                      data: data.phoneNumber ?? '',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ProfileRow(
                      icon: FaIcon(FontAwesomeIcons.squareFacebook,
                          color: Color.fromARGB(255, 48, 123, 188), size: 22),
                      name: 'Facebook',
                      data: data.facebookUrl ?? '',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ProfileRow(
                      icon: FaIcon(FontAwesomeIcons.solidCalendarDays,
                          color: global.primary2, size: 18),
                      name: 'Ngày tham gia',
                      data: DateFormat('dd/MM/yyyy').format(data.createdAt),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ProfileRow(
                      icon: FaIcon(FontAwesomeIcons.clockRotateLeft,
                          color: global.primary2, size: 18),
                      name: 'Chỉnh sửa gần nhất',
                      data: data.updatedAt != null
                          ? DateFormat('dd/MM/yyyy').format(data.updatedAt!)
                          : DateFormat('dd/MM/yyyy').format(data.createdAt),
                    ),
                  ],
                ),
            error: (error, stackTrace) => const ShimmerList(
                height: 50.0,
                width: 320.0,
                row: 3,
                color: Color.fromARGB(118, 2, 193, 123),
                baseColor: Color.fromARGB(118, 0, 100, 63)),
            loading: () => const ShimmerList(
                height: 50.0,
                width: 320.0,
                row: 3,
                color: Color.fromARGB(118, 2, 193, 123),
                baseColor: Color.fromARGB(118, 0, 100, 63))));
  }
}
