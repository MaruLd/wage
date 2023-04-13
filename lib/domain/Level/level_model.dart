import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'level_model.freezed.dart';
part 'level_model.g.dart';

@freezed
class Level with _$Level {
  const Level._();
  factory Level({
    required int levelId,
    required String levelName,
    required double basePoint,
    required double basePointPerHour,
    required double loyal,
    required String levelColor,
    required double xpNeeded,
  }) = _Level;
  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}
