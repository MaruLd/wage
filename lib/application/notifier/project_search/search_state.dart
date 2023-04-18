import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/Project/project_model.dart';
part 'search_state.freezed.dart';

@freezed
class SearchProjectState with _$SearchProjectState {
  factory SearchProjectState({
    required List<Project> projectList,
  }) = _SearchState;
  const SearchProjectState._();

  factory SearchProjectState.empty() => SearchProjectState(
        projectList: [],
      );
}
