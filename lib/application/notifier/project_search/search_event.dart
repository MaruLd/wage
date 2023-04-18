import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/Project/project_model.dart';
part 'search_event.freezed.dart';

@freezed
class SearchProjectEvent with _$SearchProjectEvent {
  const factory SearchProjectEvent.searchedProjectTextChanged(
      {required String text}) = SearchedProjectTextChanged;
  const factory SearchProjectEvent.updateProjectListItems(
      {required List<Project> projectList}) = UpdateProjectListItems;
}
