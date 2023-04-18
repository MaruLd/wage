import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/application/notifier/project_search/search_event.dart';
import 'package:wage/application/notifier/project_search/search_state.dart';

class SearchProjectNotifier extends StateNotifier<SearchProjectState> {
  SearchProjectNotifier() : super(SearchProjectState.empty());

  void mapEventsToState(SearchProjectEvent event) {
    event.map(
      searchedProjectTextChanged: (searchedTextChangedEvent) {
        final projectList = [...state.projectList];
        final searchedProjectList = projectList
            .where((project) => project.projectName!.toLowerCase().contains(
                searchedTextChangedEvent.text.toLowerCase().trimLeft()))
            .toList();

        state = state.copyWith(projectList: searchedProjectList);
      },
      updateProjectListItems: (updateListItemsEvent) {
        state = state.copyWith(
          projectList: updateListItemsEvent.projectList,
        );
      },
    );
  }
}
