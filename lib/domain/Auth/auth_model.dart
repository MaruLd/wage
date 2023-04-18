import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wage/domain/User/user_model.dart';
part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthInfo with _$AuthInfo {
  factory AuthInfo({User? user, String? token, bool? isNewUser}) = _AuthInfo;
  factory AuthInfo.fromJson(Map<String, Object?> json) =>
      _$AuthInfoFromJson(json);
}
