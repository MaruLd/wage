import 'package:freezed_annotation/freezed_annotation.dart';

import '../Level/level_model.dart';
part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class Member with _$Member {
  const Member._();
  factory Member({
    required String memberId,
    required String emailAddress,
    required String fullName,
    String? phoneNumber,
    String? imageUrl,
    String? facebookUrl,
    required MemberLevels memberLevels,
    required Role role,
  }) = _Member;
  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@freezed
class MemberLevels with _$MemberLevels {
  const MemberLevels._();
  factory MemberLevels({
    required Level level,
    required DateTime createdAt,
  }) = _MemberLevels;
  factory MemberLevels.fromJson(Map<String, dynamic> json) =>
      _$MemberLevelsFromJson(json);
}

@freezed
class Role with _$Role {
  const Role._();
  factory Role({
    required String roleId,
    required String roleName,
  }) = _Role;
  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
