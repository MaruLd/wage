import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/infrastructure/api_service/api_service.dart';
import 'package:wage/infrastructure/authentication/google_sign_in.dart';

final apiProvider = Provider((ref) => ApiService());
final googleProvider = Provider((ref) => GoogleSignInProvider());