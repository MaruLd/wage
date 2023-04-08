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
mixin _$SearchState {
  List<Voucher> get voucherList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchVoucherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchVoucherState value, $Res Function(SearchVoucherState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchVoucherState>;
  @useResult
  $Res call({List<Voucher> voucherList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchVoucherState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherList = null,
  }) {
    return _then(_value.copyWith(
      voucherList: null == voucherList
          ? _value.voucherList
          : voucherList // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Voucher> voucherList});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherList = null,
  }) {
    return _then(_$_SearchState(
      voucherList: null == voucherList
          ? _value._voucherList
          : voucherList // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
    ));
  }
}

/// @nodoc

class _$_SearchState extends _SearchState {
  _$_SearchState({required final List<Voucher> voucherList})
      : _voucherList = voucherList,
        super._();

  final List<Voucher> _voucherList;
  @override
  List<Voucher> get voucherList {
    if (_voucherList is EqualUnmodifiableListView) return _voucherList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voucherList);
  }

  @override
  String toString() {
    return 'SearchState(voucherList: $voucherList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._voucherList, _voucherList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_voucherList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState extends SearchVoucherState {
  factory _SearchState({required final List<Voucher> voucherList}) =
      _$_SearchState;
  _SearchState._() : super._();

  @override
  List<Voucher> get voucherList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
