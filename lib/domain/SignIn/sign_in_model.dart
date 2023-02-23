import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wage/domain/User/user_model.dart';
part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

@freezed
class SignIn with _$SignIn {
  factory SignIn({User? user, String? token}) = _SignIn;
  factory SignIn.fromJson(Map<String, Object?> json) => _$SignInFromJson(json);
}
