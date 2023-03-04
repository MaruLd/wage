import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wage/domain/User/user_model.dart';
part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthDTO with _$AuthDTO {
  factory AuthDTO({User? user, SubMember? member, String? token}) = _AuthDTO;
  factory AuthDTO.fromJson(Map<String, Object?> json) =>
      _$AuthDTOFromJson(json);
}

@freezed
class SubMember with _$SubMember {
  const SubMember._();
  factory SubMember(
      {required String memberId,
      required String emailAddress,
      required String fullName,
      required String imageUrl,
      required String facebookUrl}) = _SubMember;
  factory SubMember.fromJson(Map<String, dynamic> json) =>
      _$SubMemberFromJson(json);
}
