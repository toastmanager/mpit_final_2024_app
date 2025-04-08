// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatbot_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatbotMessage {
  bool get isUser => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of ChatbotMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatbotMessageCopyWith<ChatbotMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotMessageCopyWith<$Res> {
  factory $ChatbotMessageCopyWith(
          ChatbotMessage value, $Res Function(ChatbotMessage) then) =
      _$ChatbotMessageCopyWithImpl<$Res, ChatbotMessage>;
  @useResult
  $Res call({bool isUser, String message});
}

/// @nodoc
class _$ChatbotMessageCopyWithImpl<$Res, $Val extends ChatbotMessage>
    implements $ChatbotMessageCopyWith<$Res> {
  _$ChatbotMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatbotMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUser = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatbotMessageImplCopyWith<$Res>
    implements $ChatbotMessageCopyWith<$Res> {
  factory _$$ChatbotMessageImplCopyWith(_$ChatbotMessageImpl value,
          $Res Function(_$ChatbotMessageImpl) then) =
      __$$ChatbotMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUser, String message});
}

/// @nodoc
class __$$ChatbotMessageImplCopyWithImpl<$Res>
    extends _$ChatbotMessageCopyWithImpl<$Res, _$ChatbotMessageImpl>
    implements _$$ChatbotMessageImplCopyWith<$Res> {
  __$$ChatbotMessageImplCopyWithImpl(
      _$ChatbotMessageImpl _value, $Res Function(_$ChatbotMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUser = null,
    Object? message = null,
  }) {
    return _then(_$ChatbotMessageImpl(
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatbotMessageImpl implements _ChatbotMessage {
  const _$ChatbotMessageImpl({required this.isUser, required this.message});

  @override
  final bool isUser;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatbotMessage(isUser: $isUser, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatbotMessageImpl &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUser, message);

  /// Create a copy of ChatbotMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatbotMessageImplCopyWith<_$ChatbotMessageImpl> get copyWith =>
      __$$ChatbotMessageImplCopyWithImpl<_$ChatbotMessageImpl>(
          this, _$identity);
}

abstract class _ChatbotMessage implements ChatbotMessage {
  const factory _ChatbotMessage(
      {required final bool isUser,
      required final String message}) = _$ChatbotMessageImpl;

  @override
  bool get isUser;
  @override
  String get message;

  /// Create a copy of ChatbotMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatbotMessageImplCopyWith<_$ChatbotMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
