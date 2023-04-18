// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchProjectState {
  List<Project> get projectList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProjectStateCopyWith<SearchProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProjectStateCopyWith<$Res> {
  factory $SearchProjectStateCopyWith(
          SearchProjectState value, $Res Function(SearchProjectState) then) =
      _$SearchProjectStateCopyWithImpl<$Res, SearchProjectState>;
  @useResult
  $Res call({List<Project> projectList});
}

/// @nodoc
class _$SearchProjectStateCopyWithImpl<$Res, $Val extends SearchProjectState>
    implements $SearchProjectStateCopyWith<$Res> {
  _$SearchProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectList = null,
  }) {
    return _then(_value.copyWith(
      projectList: null == projectList
          ? _value.projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchProjectStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Project> projectList});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchProjectStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectList = null,
  }) {
    return _then(_$_SearchState(
      projectList: null == projectList
          ? _value._projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc

class _$_SearchState extends _SearchState {
  _$_SearchState({required final List<Project> projectList})
      : _projectList = projectList,
        super._();

  final List<Project> _projectList;
  @override
  List<Project> get projectList {
    if (_projectList is EqualUnmodifiableListView) return _projectList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectList);
  }

  @override
  String toString() {
    return 'SearchProjectState(projectList: $projectList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._projectList, _projectList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_projectList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState extends SearchProjectState {
  factory _SearchState({required final List<Project> projectList}) =
      _$_SearchState;
  _SearchState._() : super._();

  @override
  List<Project> get projectList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
