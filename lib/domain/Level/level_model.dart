import 'package:freezed_annotation/freezed_annotation.dart';
part 'level_model.freezed.dart';
part 'level_model.g.dart';

@freezed
class Level with _$Level {
  const Level._();
  factory Level({
    required String levelId,
    required String levelName,
    required int basePoint,
    required int basePointPerHour,
    required int loyal,
    required String levelColor,
    required int xpNeeded,
  }) = _Level;
  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}
