// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedProjectTextChanged,
    required TResult Function(List<Project> projectList) updateProjectListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedProjectTextChanged,
    TResult? Function(List<Project> projectList)? updateProjectListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedProjectTextChanged,
    TResult Function(List<Project> projectList)? updateProjectListItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedProjectTextChanged value)
        searchedProjectTextChanged,
    required TResult Function(UpdateProjectListItems value)
        updateProjectListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedProjectTextChanged value)?
        searchedProjectTextChanged,
    TResult? Function(UpdateProjectListItems value)? updateProjectListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedProjectTextChanged value)?
        searchedProjectTextChanged,
    TResult Function(UpdateProjectListItems value)? updateProjectListItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProjectEventCopyWith<$Res> {
  factory $SearchProjectEventCopyWith(
          SearchProjectEvent value, $Res Function(SearchProjectEvent) then) =
      _$SearchProjectEventCopyWithImpl<$Res, SearchProjectEvent>;
}

/// @nodoc
class _$SearchProjectEventCopyWithImpl<$Res, $Val extends SearchProjectEvent>
    implements $SearchProjectEventCopyWith<$Res> {
  _$SearchProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchedProjectTextChangedCopyWith<$Res> {
  factory _$$SearchedProjectTextChangedCopyWith(
          _$SearchedProjectTextChanged value,
          $Res Function(_$SearchedProjectTextChanged) then) =
      __$$SearchedProjectTextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchedProjectTextChangedCopyWithImpl<$Res>
    extends _$SearchProjectEventCopyWithImpl<$Res, _$SearchedProjectTextChanged>
    implements _$$SearchedProjectTextChangedCopyWith<$Res> {
  __$$SearchedProjectTextChangedCopyWithImpl(
      _$SearchedProjectTextChanged _value,
      $Res Function(_$SearchedProjectTextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchedProjectTextChanged(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchedProjectTextChanged implements SearchedProjectTextChanged {
  const _$SearchedProjectTextChanged({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SearchProjectEvent.searchedProjectTextChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedProjectTextChanged &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedProjectTextChangedCopyWith<_$SearchedProjectTextChanged>
      get copyWith => __$$SearchedProjectTextChangedCopyWithImpl<
          _$SearchedProjectTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedProjectTextChanged,
    required TResult Function(List<Project> projectList) updateProjectListItems,
  }) {
    return searchedProjectTextChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedProjectTextChanged,
    TResult? Function(List<Project> projectList)? updateProjectListItems,
  }) {
    return searchedProjectTextChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedProjectTextChanged,
    TResult Function(List<Project> projectList)? updateProjectListItems,
    required TResult orElse(),
  }) {
    if (searchedProjectTextChanged != null) {
      return searchedProjectTextChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedProjectTextChanged value)
        searchedProjectTextChanged,
    required TResult Function(UpdateProjectListItems value)
        updateProjectListItems,
  }) {
    return searchedProjectTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedProjectTextChanged value)?
        searchedProjectTextChanged,
    TResult? Function(UpdateProjectListItems value)? updateProjectListItems,
  }) {
    return searchedProjectTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedProjectTextChanged value)?
        searchedProjectTextChanged,
    TResult Function(UpdateProjectListItems value)? updateProjectListItems,
    required TResult orElse(),
  }) {
    if (searchedProjectTextChanged != null) {
      return searchedProjectTextChanged(this);
    }
    return orElse();
  }
}

abstract class SearchedProjectTextChanged implements SearchProjectEvent {
  const factory SearchedProjectTextChanged({required final String text}) =
      _$SearchedProjectTextChanged;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchedProjectTextChangedCopyWith<_$SearchedProjectTextChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProjectListItemsCopyWith<$Res> {
  factory _$$UpdateProjectListItemsCopyWith(_$UpdateProjectListItems value,
          $Res Function(_$UpdateProjectListItems) then) =
      __$$UpdateProjectListItemsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Project> projectList});
}

/// @nodoc
class __$$UpdateProjectListItemsCopyWithImpl<$Res>
    extends _$SearchProjectEventCopyWithImpl<$Res, _$UpdateProjectListItems>
    implements _$$UpdateProjectListItemsCopyWith<$Res> {
  __$$UpdateProjectListItemsCopyWithImpl(_$UpdateProjectListItems _value,
      $Res Function(_$UpdateProjectListItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectList = null,
  }) {
    return _then(_$UpdateProjectListItems(
      projectList: null == projectList
          ? _value._projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc

class _$UpdateProjectListItems implements UpdateProjectListItems {
  const _$UpdateProjectListItems({required final List<Project> projectList})
      : _projectList = projectList;

  final List<Project> _projectList;
  @override
  List<Project> get projectList {
    if (_projectList is EqualUnmodifiableListView) return _projectList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectList);
  }

  @override
  String toString() {
    return 'SearchProjectEvent.updateProjectListItems(projectList: $projectList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProjectListItems &&
            const DeepCollectionEquality()
                .equals(other._projectList, _projectList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_projectList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProjectListItemsCopyWith<_$UpdateProjectListItems> get copyWith =>
      __$$UpdateProjectListItemsCopyWithImpl<_$UpdateProjectListItems>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchedProjectTextChanged,
    required TResult Function(List<Project> projectList) updateProjectListItems,
  }) {
    return updateProjectListItems(projectList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchedProjectTextChanged,
    TResult? Function(List<Project> projectList)? updateProjectListItems,
  }) {
    return updateProjectListItems?.call(projectList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchedProjectTextChanged,
    TResult Function(List<Project> projectList)? updateProjectListItems,
    required TResult orElse(),
  }) {
    if (updateProjectListItems != null) {
      return updateProjectListItems(projectList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedProjectTextChanged value)
        searchedProjectTextChanged,
    required TResult Function(UpdateProjectListItems value)
        updateProjectListItems,
  }) {
    return updateProjectListItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedProjectTextChanged value)?
        searchedProjectTextChanged,
    TResult? Function(UpdateProjectListItems value)? updateProjectListItems,
  }) {
    return updateProjectListItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedProjectTextChanged value)?
        searchedProjectTextChanged,
    TResult Function(UpdateProjectListItems value)? updateProjectListItems,
    required TResult orElse(),
  }) {
    if (updateProjectListItems != null) {
      return updateProjectListItems(this);
    }
    return orElse();
  }
}

abstract class UpdateProjectListItems implements SearchProjectEvent {
  const factory UpdateProjectListItems(
      {required final List<Project> projectList}) = _$UpdateProjectListItems;

  List<Project> get projectList;
  @JsonKey(ignore: true)
  _$$UpdateProjectListItemsCopyWith<_$UpdateProjectListItems> get copyWith =>
      throw _privateConstructorUsedError;
}
