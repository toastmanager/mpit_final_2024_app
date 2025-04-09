// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_requests_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HelpRequestsListState {
  List<HelpRequestDto> get helpRequests => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HelpRequestDto> helpRequests) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HelpRequestDto> helpRequests)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HelpRequestDto> helpRequests)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HelpRequestsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelpRequestsListStateCopyWith<HelpRequestsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpRequestsListStateCopyWith<$Res> {
  factory $HelpRequestsListStateCopyWith(HelpRequestsListState value,
          $Res Function(HelpRequestsListState) then) =
      _$HelpRequestsListStateCopyWithImpl<$Res, HelpRequestsListState>;
  @useResult
  $Res call({List<HelpRequestDto> helpRequests});
}

/// @nodoc
class _$HelpRequestsListStateCopyWithImpl<$Res,
        $Val extends HelpRequestsListState>
    implements $HelpRequestsListStateCopyWith<$Res> {
  _$HelpRequestsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelpRequestsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helpRequests = null,
  }) {
    return _then(_value.copyWith(
      helpRequests: null == helpRequests
          ? _value.helpRequests
          : helpRequests // ignore: cast_nullable_to_non_nullable
              as List<HelpRequestDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HelpRequestsListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HelpRequestDto> helpRequests});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HelpRequestsListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelpRequestsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helpRequests = null,
  }) {
    return _then(_$InitialImpl(
      helpRequests: null == helpRequests
          ? _value._helpRequests
          : helpRequests // ignore: cast_nullable_to_non_nullable
              as List<HelpRequestDto>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<HelpRequestDto> helpRequests})
      : _helpRequests = helpRequests;

  final List<HelpRequestDto> _helpRequests;
  @override
  List<HelpRequestDto> get helpRequests {
    if (_helpRequests is EqualUnmodifiableListView) return _helpRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_helpRequests);
  }

  @override
  String toString() {
    return 'HelpRequestsListState.initial(helpRequests: $helpRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._helpRequests, _helpRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_helpRequests));

  /// Create a copy of HelpRequestsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HelpRequestDto> helpRequests) initial,
  }) {
    return initial(helpRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<HelpRequestDto> helpRequests)? initial,
  }) {
    return initial?.call(helpRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HelpRequestDto> helpRequests)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(helpRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HelpRequestsListState {
  const factory _Initial({required final List<HelpRequestDto> helpRequests}) =
      _$InitialImpl;

  @override
  List<HelpRequestDto> get helpRequests;

  /// Create a copy of HelpRequestsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
