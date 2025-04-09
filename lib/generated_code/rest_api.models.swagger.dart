// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'rest_api.enums.swagger.dart' as enums;

part 'rest_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestOTPDto {
  const RequestOTPDto({
    required this.tel,
  });

  factory RequestOTPDto.fromJson(Map<String, dynamic> json) =>
      _$RequestOTPDtoFromJson(json);

  static const toJsonFactory = _$RequestOTPDtoToJson;
  Map<String, dynamic> toJson() => _$RequestOTPDtoToJson(this);

  @JsonKey(name: 'tel')
  final String tel;
  static const fromJsonFactory = _$RequestOTPDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RequestOTPDto &&
            (identical(other.tel, tel) ||
                const DeepCollectionEquality().equals(other.tel, tel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tel) ^ runtimeType.hashCode;
}

extension $RequestOTPDtoExtension on RequestOTPDto {
  RequestOTPDto copyWith({String? tel}) {
    return RequestOTPDto(tel: tel ?? this.tel);
  }

  RequestOTPDto copyWithWrapped({Wrapped<String>? tel}) {
    return RequestOTPDto(tel: (tel != null ? tel.value : this.tel));
  }
}

@JsonSerializable(explicitToJson: true)
class VerifyOTPDto {
  const VerifyOTPDto({
    required this.tel,
    required this.otp,
  });

  factory VerifyOTPDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPDtoFromJson(json);

  static const toJsonFactory = _$VerifyOTPDtoToJson;
  Map<String, dynamic> toJson() => _$VerifyOTPDtoToJson(this);

  @JsonKey(name: 'tel')
  final String tel;
  @JsonKey(name: 'otp')
  final String otp;
  static const fromJsonFactory = _$VerifyOTPDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VerifyOTPDto &&
            (identical(other.tel, tel) ||
                const DeepCollectionEquality().equals(other.tel, tel)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tel) ^
      const DeepCollectionEquality().hash(otp) ^
      runtimeType.hashCode;
}

extension $VerifyOTPDtoExtension on VerifyOTPDto {
  VerifyOTPDto copyWith({String? tel, String? otp}) {
    return VerifyOTPDto(tel: tel ?? this.tel, otp: otp ?? this.otp);
  }

  VerifyOTPDto copyWithWrapped({Wrapped<String>? tel, Wrapped<String>? otp}) {
    return VerifyOTPDto(
        tel: (tel != null ? tel.value : this.tel),
        otp: (otp != null ? otp.value : this.otp));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthTokenDto {
  const AuthTokenDto({
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenDtoFromJson(json);

  static const toJsonFactory = _$AuthTokenDtoToJson;
  Map<String, dynamic> toJson() => _$AuthTokenDtoToJson(this);

  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  static const fromJsonFactory = _$AuthTokenDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AuthTokenDto &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $AuthTokenDtoExtension on AuthTokenDto {
  AuthTokenDto copyWith({String? accessToken, String? refreshToken}) {
    return AuthTokenDto(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  AuthTokenDto copyWithWrapped(
      {Wrapped<String>? accessToken, Wrapped<String>? refreshToken}) {
    return AuthTokenDto(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class RefreshTokenDto {
  const RefreshTokenDto({
    required this.refreshToken,
  });

  factory RefreshTokenDto.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDtoFromJson(json);

  static const toJsonFactory = _$RefreshTokenDtoToJson;
  Map<String, dynamic> toJson() => _$RefreshTokenDtoToJson(this);

  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  static const fromJsonFactory = _$RefreshTokenDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RefreshTokenDto &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $RefreshTokenDtoExtension on RefreshTokenDto {
  RefreshTokenDto copyWith({String? refreshToken}) {
    return RefreshTokenDto(refreshToken: refreshToken ?? this.refreshToken);
  }

  RefreshTokenDto copyWithWrapped({Wrapped<String>? refreshToken}) {
    return RefreshTokenDto(
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class LogoutDto {
  const LogoutDto({
    required this.refreshToken,
  });

  factory LogoutDto.fromJson(Map<String, dynamic> json) =>
      _$LogoutDtoFromJson(json);

  static const toJsonFactory = _$LogoutDtoToJson;
  Map<String, dynamic> toJson() => _$LogoutDtoToJson(this);

  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  static const fromJsonFactory = _$LogoutDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LogoutDto &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $LogoutDtoExtension on LogoutDto {
  LogoutDto copyWith({String? refreshToken}) {
    return LogoutDto(refreshToken: refreshToken ?? this.refreshToken);
  }

  LogoutDto copyWithWrapped({Wrapped<String>? refreshToken}) {
    return LogoutDto(
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class UserSensitiveDto {
  const UserSensitiveDto({
    required this.id,
    this.username,
    this.avatarUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.tel,
    required this.roles,
  });

  factory UserSensitiveDto.fromJson(Map<String, dynamic> json) =>
      _$UserSensitiveDtoFromJson(json);

  static const toJsonFactory = _$UserSensitiveDtoToJson;
  Map<String, dynamic> toJson() => _$UserSensitiveDtoToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: 'tel')
  final String tel;
  @JsonKey(
    name: 'roles',
    toJson: userSensitiveDtoRolesListToJson,
    fromJson: userSensitiveDtoRolesListFromJson,
  )
  final List<enums.UserSensitiveDtoRoles> roles;
  static const fromJsonFactory = _$UserSensitiveDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserSensitiveDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.tel, tel) ||
                const DeepCollectionEquality().equals(other.tel, tel)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(tel) ^
      const DeepCollectionEquality().hash(roles) ^
      runtimeType.hashCode;
}

extension $UserSensitiveDtoExtension on UserSensitiveDto {
  UserSensitiveDto copyWith(
      {double? id,
      String? username,
      String? avatarUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? tel,
      List<enums.UserSensitiveDtoRoles>? roles}) {
    return UserSensitiveDto(
        id: id ?? this.id,
        username: username ?? this.username,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        tel: tel ?? this.tel,
        roles: roles ?? this.roles);
  }

  UserSensitiveDto copyWithWrapped(
      {Wrapped<double>? id,
      Wrapped<String?>? username,
      Wrapped<String?>? avatarUrl,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt,
      Wrapped<String>? tel,
      Wrapped<List<enums.UserSensitiveDtoRoles>>? roles}) {
    return UserSensitiveDto(
        id: (id != null ? id.value : this.id),
        username: (username != null ? username.value : this.username),
        avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        tel: (tel != null ? tel.value : this.tel),
        roles: (roles != null ? roles.value : this.roles));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserDto {
  const CreateUserDto({
    required this.tel,
  });

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  static const toJsonFactory = _$CreateUserDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserDtoToJson(this);

  @JsonKey(name: 'tel')
  final String tel;
  static const fromJsonFactory = _$CreateUserDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateUserDto &&
            (identical(other.tel, tel) ||
                const DeepCollectionEquality().equals(other.tel, tel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tel) ^ runtimeType.hashCode;
}

extension $CreateUserDtoExtension on CreateUserDto {
  CreateUserDto copyWith({String? tel}) {
    return CreateUserDto(tel: tel ?? this.tel);
  }

  CreateUserDto copyWithWrapped({Wrapped<String>? tel}) {
    return CreateUserDto(tel: (tel != null ? tel.value : this.tel));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDto {
  const UserDto({
    required this.id,
    this.username,
    this.avatarUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  static const toJsonFactory = _$UserDtoToJson;
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$UserDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UserDtoExtension on UserDto {
  UserDto copyWith(
      {double? id,
      String? username,
      String? avatarUrl,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UserDto(
        id: id ?? this.id,
        username: username ?? this.username,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  UserDto copyWithWrapped(
      {Wrapped<double>? id,
      Wrapped<String?>? username,
      Wrapped<String?>? avatarUrl,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return UserDto(
        id: (id != null ? id.value : this.id),
        username: (username != null ? username.value : this.username),
        avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserDto {
  const UpdateUserDto({
    this.tel,
  });

  factory UpdateUserDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDtoFromJson(json);

  static const toJsonFactory = _$UpdateUserDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateUserDtoToJson(this);

  @JsonKey(name: 'tel')
  final String? tel;
  static const fromJsonFactory = _$UpdateUserDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateUserDto &&
            (identical(other.tel, tel) ||
                const DeepCollectionEquality().equals(other.tel, tel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tel) ^ runtimeType.hashCode;
}

extension $UpdateUserDtoExtension on UpdateUserDto {
  UpdateUserDto copyWith({String? tel}) {
    return UpdateUserDto(tel: tel ?? this.tel);
  }

  UpdateUserDto copyWithWrapped({Wrapped<String?>? tel}) {
    return UpdateUserDto(tel: (tel != null ? tel.value : this.tel));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateArticleDto {
  const CreateArticleDto({
    required this.title,
    required this.text,
  });

  factory CreateArticleDto.fromJson(Map<String, dynamic> json) =>
      _$CreateArticleDtoFromJson(json);

  static const toJsonFactory = _$CreateArticleDtoToJson;
  Map<String, dynamic> toJson() => _$CreateArticleDtoToJson(this);

  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'text')
  final String text;
  static const fromJsonFactory = _$CreateArticleDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateArticleDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      runtimeType.hashCode;
}

extension $CreateArticleDtoExtension on CreateArticleDto {
  CreateArticleDto copyWith({String? title, String? text}) {
    return CreateArticleDto(
        title: title ?? this.title, text: text ?? this.text);
  }

  CreateArticleDto copyWithWrapped(
      {Wrapped<String>? title, Wrapped<String>? text}) {
    return CreateArticleDto(
        title: (title != null ? title.value : this.title),
        text: (text != null ? text.value : this.text));
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleDto {
  const ArticleDto({
    required this.id,
    required this.slug,
    required this.title,
    required this.text,
    this.bannerUrl,
    required this.author,
    required this.views,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);

  static const toJsonFactory = _$ArticleDtoToJson;
  Map<String, dynamic> toJson() => _$ArticleDtoToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'bannerUrl')
  final String? bannerUrl;
  @JsonKey(name: 'author')
  final UserDto author;
  @JsonKey(name: 'views')
  final int views;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$ArticleDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ArticleDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.bannerUrl, bannerUrl) ||
                const DeepCollectionEquality()
                    .equals(other.bannerUrl, bannerUrl)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(bannerUrl) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ArticleDtoExtension on ArticleDto {
  ArticleDto copyWith(
      {double? id,
      String? slug,
      String? title,
      String? text,
      String? bannerUrl,
      UserDto? author,
      int? views,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return ArticleDto(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        title: title ?? this.title,
        text: text ?? this.text,
        bannerUrl: bannerUrl ?? this.bannerUrl,
        author: author ?? this.author,
        views: views ?? this.views,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ArticleDto copyWithWrapped(
      {Wrapped<double>? id,
      Wrapped<String>? slug,
      Wrapped<String>? title,
      Wrapped<String>? text,
      Wrapped<String?>? bannerUrl,
      Wrapped<UserDto>? author,
      Wrapped<int>? views,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return ArticleDto(
        id: (id != null ? id.value : this.id),
        slug: (slug != null ? slug.value : this.slug),
        title: (title != null ? title.value : this.title),
        text: (text != null ? text.value : this.text),
        bannerUrl: (bannerUrl != null ? bannerUrl.value : this.bannerUrl),
        author: (author != null ? author.value : this.author),
        views: (views != null ? views.value : this.views),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateArticleDto {
  const UpdateArticleDto({
    this.title,
    this.text,
  });

  factory UpdateArticleDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateArticleDtoFromJson(json);

  static const toJsonFactory = _$UpdateArticleDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateArticleDtoToJson(this);

  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'text')
  final String? text;
  static const fromJsonFactory = _$UpdateArticleDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateArticleDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      runtimeType.hashCode;
}

extension $UpdateArticleDtoExtension on UpdateArticleDto {
  UpdateArticleDto copyWith({String? title, String? text}) {
    return UpdateArticleDto(
        title: title ?? this.title, text: text ?? this.text);
  }

  UpdateArticleDto copyWithWrapped(
      {Wrapped<String?>? title, Wrapped<String?>? text}) {
    return UpdateArticleDto(
        title: (title != null ? title.value : this.title),
        text: (text != null ? text.value : this.text));
  }
}

@JsonSerializable(explicitToJson: true)
class AskArticlesChatbotDto {
  const AskArticlesChatbotDto({
    required this.history,
  });

  factory AskArticlesChatbotDto.fromJson(Map<String, dynamic> json) =>
      _$AskArticlesChatbotDtoFromJson(json);

  static const toJsonFactory = _$AskArticlesChatbotDtoToJson;
  Map<String, dynamic> toJson() => _$AskArticlesChatbotDtoToJson(this);

  @JsonKey(name: 'history')
  final String history;
  static const fromJsonFactory = _$AskArticlesChatbotDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AskArticlesChatbotDto &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(history) ^ runtimeType.hashCode;
}

extension $AskArticlesChatbotDtoExtension on AskArticlesChatbotDto {
  AskArticlesChatbotDto copyWith({String? history}) {
    return AskArticlesChatbotDto(history: history ?? this.history);
  }

  AskArticlesChatbotDto copyWithWrapped({Wrapped<String>? history}) {
    return AskArticlesChatbotDto(
        history: (history != null ? history.value : this.history));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateHelpRequestDto {
  const CreateHelpRequestDto({
    required this.text,
    required this.title,
    required this.type,
  });

  factory CreateHelpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateHelpRequestDtoFromJson(json);

  static const toJsonFactory = _$CreateHelpRequestDtoToJson;
  Map<String, dynamic> toJson() => _$CreateHelpRequestDtoToJson(this);

  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(
    name: 'type',
    toJson: createHelpRequestDtoTypeToJson,
    fromJson: createHelpRequestDtoTypeFromJson,
  )
  final enums.CreateHelpRequestDtoType type;
  static const fromJsonFactory = _$CreateHelpRequestDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateHelpRequestDto &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CreateHelpRequestDtoExtension on CreateHelpRequestDto {
  CreateHelpRequestDto copyWith(
      {String? text, String? title, enums.CreateHelpRequestDtoType? type}) {
    return CreateHelpRequestDto(
        text: text ?? this.text,
        title: title ?? this.title,
        type: type ?? this.type);
  }

  CreateHelpRequestDto copyWithWrapped(
      {Wrapped<String>? text,
      Wrapped<String>? title,
      Wrapped<enums.CreateHelpRequestDtoType>? type}) {
    return CreateHelpRequestDto(
        text: (text != null ? text.value : this.text),
        title: (title != null ? title.value : this.title),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class HelpRequestDto {
  const HelpRequestDto({
    required this.uuid,
    required this.title,
    required this.text,
    required this.requesterId,
    this.volunteerTg,
    required this.type,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory HelpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$HelpRequestDtoFromJson(json);

  static const toJsonFactory = _$HelpRequestDtoToJson;
  Map<String, dynamic> toJson() => _$HelpRequestDtoToJson(this);

  @JsonKey(name: 'uuid')
  final String uuid;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'requesterId')
  final double requesterId;
  @JsonKey(name: 'volunteerTg')
  final String? volunteerTg;
  @JsonKey(
    name: 'type',
    toJson: helpRequestDtoTypeToJson,
    fromJson: helpRequestDtoTypeFromJson,
  )
  final enums.HelpRequestDtoType type;
  @JsonKey(
    name: 'status',
    toJson: helpRequestDtoStatusToJson,
    fromJson: helpRequestDtoStatusFromJson,
  )
  final enums.HelpRequestDtoStatus status;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  static const fromJsonFactory = _$HelpRequestDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is HelpRequestDto &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.requesterId, requesterId) ||
                const DeepCollectionEquality()
                    .equals(other.requesterId, requesterId)) &&
            (identical(other.volunteerTg, volunteerTg) ||
                const DeepCollectionEquality()
                    .equals(other.volunteerTg, volunteerTg)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(requesterId) ^
      const DeepCollectionEquality().hash(volunteerTg) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $HelpRequestDtoExtension on HelpRequestDto {
  HelpRequestDto copyWith(
      {String? uuid,
      String? title,
      String? text,
      double? requesterId,
      String? volunteerTg,
      enums.HelpRequestDtoType? type,
      enums.HelpRequestDtoStatus? status,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return HelpRequestDto(
        uuid: uuid ?? this.uuid,
        title: title ?? this.title,
        text: text ?? this.text,
        requesterId: requesterId ?? this.requesterId,
        volunteerTg: volunteerTg ?? this.volunteerTg,
        type: type ?? this.type,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  HelpRequestDto copyWithWrapped(
      {Wrapped<String>? uuid,
      Wrapped<String>? title,
      Wrapped<String>? text,
      Wrapped<double>? requesterId,
      Wrapped<String?>? volunteerTg,
      Wrapped<enums.HelpRequestDtoType>? type,
      Wrapped<enums.HelpRequestDtoStatus>? status,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt}) {
    return HelpRequestDto(
        uuid: (uuid != null ? uuid.value : this.uuid),
        title: (title != null ? title.value : this.title),
        text: (text != null ? text.value : this.text),
        requesterId:
            (requesterId != null ? requesterId.value : this.requesterId),
        volunteerTg:
            (volunteerTg != null ? volunteerTg.value : this.volunteerTg),
        type: (type != null ? type.value : this.type),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateHelpRequestDto {
  const UpdateHelpRequestDto({
    this.text,
    this.title,
    this.type,
  });

  factory UpdateHelpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateHelpRequestDtoFromJson(json);

  static const toJsonFactory = _$UpdateHelpRequestDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateHelpRequestDtoToJson(this);

  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(
    name: 'type',
    toJson: updateHelpRequestDtoTypeNullableToJson,
    fromJson: updateHelpRequestDtoTypeNullableFromJson,
  )
  final enums.UpdateHelpRequestDtoType? type;
  static const fromJsonFactory = _$UpdateHelpRequestDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateHelpRequestDto &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $UpdateHelpRequestDtoExtension on UpdateHelpRequestDto {
  UpdateHelpRequestDto copyWith(
      {String? text, String? title, enums.UpdateHelpRequestDtoType? type}) {
    return UpdateHelpRequestDto(
        text: text ?? this.text,
        title: title ?? this.title,
        type: type ?? this.type);
  }

  UpdateHelpRequestDto copyWithWrapped(
      {Wrapped<String?>? text,
      Wrapped<String?>? title,
      Wrapped<enums.UpdateHelpRequestDtoType?>? type}) {
    return UpdateHelpRequestDto(
        text: (text != null ? text.value : this.text),
        title: (title != null ? title.value : this.title),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateHelpRequestFeedbackDto {
  const CreateHelpRequestFeedbackDto({
    required this.text,
    required this.score,
  });

  factory CreateHelpRequestFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$CreateHelpRequestFeedbackDtoFromJson(json);

  static const toJsonFactory = _$CreateHelpRequestFeedbackDtoToJson;
  Map<String, dynamic> toJson() => _$CreateHelpRequestFeedbackDtoToJson(this);

  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'score')
  final int score;
  static const fromJsonFactory = _$CreateHelpRequestFeedbackDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateHelpRequestFeedbackDto &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(score) ^
      runtimeType.hashCode;
}

extension $CreateHelpRequestFeedbackDtoExtension
    on CreateHelpRequestFeedbackDto {
  CreateHelpRequestFeedbackDto copyWith({String? text, int? score}) {
    return CreateHelpRequestFeedbackDto(
        text: text ?? this.text, score: score ?? this.score);
  }

  CreateHelpRequestFeedbackDto copyWithWrapped(
      {Wrapped<String>? text, Wrapped<int>? score}) {
    return CreateHelpRequestFeedbackDto(
        text: (text != null ? text.value : this.text),
        score: (score != null ? score.value : this.score));
  }
}

@JsonSerializable(explicitToJson: true)
class HelpRequestFeedbackDto {
  const HelpRequestFeedbackDto({
    required this.helpRequestUuid,
    required this.text,
    required this.score,
  });

  factory HelpRequestFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$HelpRequestFeedbackDtoFromJson(json);

  static const toJsonFactory = _$HelpRequestFeedbackDtoToJson;
  Map<String, dynamic> toJson() => _$HelpRequestFeedbackDtoToJson(this);

  @JsonKey(name: 'helpRequestUuid')
  final String helpRequestUuid;
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'score')
  final int score;
  static const fromJsonFactory = _$HelpRequestFeedbackDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is HelpRequestFeedbackDto &&
            (identical(other.helpRequestUuid, helpRequestUuid) ||
                const DeepCollectionEquality()
                    .equals(other.helpRequestUuid, helpRequestUuid)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(helpRequestUuid) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(score) ^
      runtimeType.hashCode;
}

extension $HelpRequestFeedbackDtoExtension on HelpRequestFeedbackDto {
  HelpRequestFeedbackDto copyWith(
      {String? helpRequestUuid, String? text, int? score}) {
    return HelpRequestFeedbackDto(
        helpRequestUuid: helpRequestUuid ?? this.helpRequestUuid,
        text: text ?? this.text,
        score: score ?? this.score);
  }

  HelpRequestFeedbackDto copyWithWrapped(
      {Wrapped<String>? helpRequestUuid,
      Wrapped<String>? text,
      Wrapped<int>? score}) {
    return HelpRequestFeedbackDto(
        helpRequestUuid: (helpRequestUuid != null
            ? helpRequestUuid.value
            : this.helpRequestUuid),
        text: (text != null ? text.value : this.text),
        score: (score != null ? score.value : this.score));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateHelpRequetStatusDto {
  const UpdateHelpRequetStatusDto({
    required this.status,
  });

  factory UpdateHelpRequetStatusDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateHelpRequetStatusDtoFromJson(json);

  static const toJsonFactory = _$UpdateHelpRequetStatusDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateHelpRequetStatusDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: updateHelpRequetStatusDtoStatusToJson,
    fromJson: updateHelpRequetStatusDtoStatusFromJson,
  )
  final enums.UpdateHelpRequetStatusDtoStatus status;
  static const fromJsonFactory = _$UpdateHelpRequetStatusDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateHelpRequetStatusDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $UpdateHelpRequetStatusDtoExtension on UpdateHelpRequetStatusDto {
  UpdateHelpRequetStatusDto copyWith(
      {enums.UpdateHelpRequetStatusDtoStatus? status}) {
    return UpdateHelpRequetStatusDto(status: status ?? this.status);
  }

  UpdateHelpRequetStatusDto copyWithWrapped(
      {Wrapped<enums.UpdateHelpRequetStatusDtoStatus>? status}) {
    return UpdateHelpRequetStatusDto(
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class ContactDto {
  const ContactDto({
    required this.id,
    this.referenceId,
    required this.contact,
    required this.type,
  });

  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);

  static const toJsonFactory = _$ContactDtoToJson;
  Map<String, dynamic> toJson() => _$ContactDtoToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'referenceId')
  final double? referenceId;
  @JsonKey(name: 'contact')
  final String contact;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$ContactDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContactDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.referenceId, referenceId) ||
                const DeepCollectionEquality()
                    .equals(other.referenceId, referenceId)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(referenceId) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ContactDtoExtension on ContactDto {
  ContactDto copyWith(
      {double? id, double? referenceId, String? contact, String? type}) {
    return ContactDto(
        id: id ?? this.id,
        referenceId: referenceId ?? this.referenceId,
        contact: contact ?? this.contact,
        type: type ?? this.type);
  }

  ContactDto copyWithWrapped(
      {Wrapped<double>? id,
      Wrapped<double?>? referenceId,
      Wrapped<String>? contact,
      Wrapped<String>? type}) {
    return ContactDto(
        id: (id != null ? id.value : this.id),
        referenceId:
            (referenceId != null ? referenceId.value : this.referenceId),
        contact: (contact != null ? contact.value : this.contact),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateReferenceDto {
  const CreateReferenceDto({
    required this.addresses,
    required this.title,
    required this.type,
    this.description,
    this.capacity,
  });

  factory CreateReferenceDto.fromJson(Map<String, dynamic> json) =>
      _$CreateReferenceDtoFromJson(json);

  static const toJsonFactory = _$CreateReferenceDtoToJson;
  Map<String, dynamic> toJson() => _$CreateReferenceDtoToJson(this);

  @JsonKey(name: 'addresses', defaultValue: <String>[])
  final List<String> addresses;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(
    name: 'type',
    toJson: createReferenceDtoTypeToJson,
    fromJson: createReferenceDtoTypeFromJson,
  )
  final enums.CreateReferenceDtoType type;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'capacity')
  final double? capacity;
  static const fromJsonFactory = _$CreateReferenceDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateReferenceDto &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.capacity, capacity) ||
                const DeepCollectionEquality()
                    .equals(other.capacity, capacity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(capacity) ^
      runtimeType.hashCode;
}

extension $CreateReferenceDtoExtension on CreateReferenceDto {
  CreateReferenceDto copyWith(
      {List<String>? addresses,
      String? title,
      enums.CreateReferenceDtoType? type,
      String? description,
      double? capacity}) {
    return CreateReferenceDto(
        addresses: addresses ?? this.addresses,
        title: title ?? this.title,
        type: type ?? this.type,
        description: description ?? this.description,
        capacity: capacity ?? this.capacity);
  }

  CreateReferenceDto copyWithWrapped(
      {Wrapped<List<String>>? addresses,
      Wrapped<String>? title,
      Wrapped<enums.CreateReferenceDtoType>? type,
      Wrapped<String?>? description,
      Wrapped<double?>? capacity}) {
    return CreateReferenceDto(
        addresses: (addresses != null ? addresses.value : this.addresses),
        title: (title != null ? title.value : this.title),
        type: (type != null ? type.value : this.type),
        description:
            (description != null ? description.value : this.description),
        capacity: (capacity != null ? capacity.value : this.capacity));
  }
}

@JsonSerializable(explicitToJson: true)
class ReferenceDto {
  const ReferenceDto({
    required this.id,
    required this.addresses,
    required this.title,
    required this.type,
    this.description,
    this.capacity,
  });

  factory ReferenceDto.fromJson(Map<String, dynamic> json) =>
      _$ReferenceDtoFromJson(json);

  static const toJsonFactory = _$ReferenceDtoToJson;
  Map<String, dynamic> toJson() => _$ReferenceDtoToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'addresses', defaultValue: <String>[])
  final List<String> addresses;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(
    name: 'type',
    toJson: referenceDtoTypeToJson,
    fromJson: referenceDtoTypeFromJson,
  )
  final enums.ReferenceDtoType type;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'capacity')
  final double? capacity;
  static const fromJsonFactory = _$ReferenceDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ReferenceDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.capacity, capacity) ||
                const DeepCollectionEquality()
                    .equals(other.capacity, capacity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(capacity) ^
      runtimeType.hashCode;
}

extension $ReferenceDtoExtension on ReferenceDto {
  ReferenceDto copyWith(
      {double? id,
      List<String>? addresses,
      String? title,
      enums.ReferenceDtoType? type,
      String? description,
      double? capacity}) {
    return ReferenceDto(
        id: id ?? this.id,
        addresses: addresses ?? this.addresses,
        title: title ?? this.title,
        type: type ?? this.type,
        description: description ?? this.description,
        capacity: capacity ?? this.capacity);
  }

  ReferenceDto copyWithWrapped(
      {Wrapped<double>? id,
      Wrapped<List<String>>? addresses,
      Wrapped<String>? title,
      Wrapped<enums.ReferenceDtoType>? type,
      Wrapped<String?>? description,
      Wrapped<double?>? capacity}) {
    return ReferenceDto(
        id: (id != null ? id.value : this.id),
        addresses: (addresses != null ? addresses.value : this.addresses),
        title: (title != null ? title.value : this.title),
        type: (type != null ? type.value : this.type),
        description:
            (description != null ? description.value : this.description),
        capacity: (capacity != null ? capacity.value : this.capacity));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateReferenceDto {
  const UpdateReferenceDto({
    this.addresses,
    this.title,
    this.type,
    this.description,
    this.capacity,
  });

  factory UpdateReferenceDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateReferenceDtoFromJson(json);

  static const toJsonFactory = _$UpdateReferenceDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateReferenceDtoToJson(this);

  @JsonKey(name: 'addresses', defaultValue: <String>[])
  final List<String>? addresses;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(
    name: 'type',
    toJson: updateReferenceDtoTypeNullableToJson,
    fromJson: updateReferenceDtoTypeNullableFromJson,
  )
  final enums.UpdateReferenceDtoType? type;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'capacity')
  final double? capacity;
  static const fromJsonFactory = _$UpdateReferenceDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateReferenceDto &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.capacity, capacity) ||
                const DeepCollectionEquality()
                    .equals(other.capacity, capacity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(capacity) ^
      runtimeType.hashCode;
}

extension $UpdateReferenceDtoExtension on UpdateReferenceDto {
  UpdateReferenceDto copyWith(
      {List<String>? addresses,
      String? title,
      enums.UpdateReferenceDtoType? type,
      String? description,
      double? capacity}) {
    return UpdateReferenceDto(
        addresses: addresses ?? this.addresses,
        title: title ?? this.title,
        type: type ?? this.type,
        description: description ?? this.description,
        capacity: capacity ?? this.capacity);
  }

  UpdateReferenceDto copyWithWrapped(
      {Wrapped<List<String>?>? addresses,
      Wrapped<String?>? title,
      Wrapped<enums.UpdateReferenceDtoType?>? type,
      Wrapped<String?>? description,
      Wrapped<double?>? capacity}) {
    return UpdateReferenceDto(
        addresses: (addresses != null ? addresses.value : this.addresses),
        title: (title != null ? title.value : this.title),
        type: (type != null ? type.value : this.type),
        description:
            (description != null ? description.value : this.description),
        capacity: (capacity != null ? capacity.value : this.capacity));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateContactDto {
  const CreateContactDto({
    required this.contact,
    required this.type,
  });

  factory CreateContactDto.fromJson(Map<String, dynamic> json) =>
      _$CreateContactDtoFromJson(json);

  static const toJsonFactory = _$CreateContactDtoToJson;
  Map<String, dynamic> toJson() => _$CreateContactDtoToJson(this);

  @JsonKey(name: 'contact')
  final String contact;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$CreateContactDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateContactDto &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $CreateContactDtoExtension on CreateContactDto {
  CreateContactDto copyWith({String? contact, String? type}) {
    return CreateContactDto(
        contact: contact ?? this.contact, type: type ?? this.type);
  }

  CreateContactDto copyWithWrapped(
      {Wrapped<String>? contact, Wrapped<String>? type}) {
    return CreateContactDto(
        contact: (contact != null ? contact.value : this.contact),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class V1ArticlesIdBannerPut$RequestBody {
  const V1ArticlesIdBannerPut$RequestBody({
    this.file,
  });

  factory V1ArticlesIdBannerPut$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$V1ArticlesIdBannerPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$V1ArticlesIdBannerPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$V1ArticlesIdBannerPut$RequestBodyToJson(this);

  @JsonKey(name: 'file')
  final String? file;
  static const fromJsonFactory = _$V1ArticlesIdBannerPut$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is V1ArticlesIdBannerPut$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $V1ArticlesIdBannerPut$RequestBodyExtension
    on V1ArticlesIdBannerPut$RequestBody {
  V1ArticlesIdBannerPut$RequestBody copyWith({String? file}) {
    return V1ArticlesIdBannerPut$RequestBody(file: file ?? this.file);
  }

  V1ArticlesIdBannerPut$RequestBody copyWithWrapped({Wrapped<String?>? file}) {
    return V1ArticlesIdBannerPut$RequestBody(
        file: (file != null ? file.value : this.file));
  }
}

String? userSensitiveDtoRolesNullableToJson(
    enums.UserSensitiveDtoRoles? userSensitiveDtoRoles) {
  return userSensitiveDtoRoles?.value;
}

String? userSensitiveDtoRolesToJson(
    enums.UserSensitiveDtoRoles userSensitiveDtoRoles) {
  return userSensitiveDtoRoles.value;
}

enums.UserSensitiveDtoRoles userSensitiveDtoRolesFromJson(
  Object? userSensitiveDtoRoles, [
  enums.UserSensitiveDtoRoles? defaultValue,
]) {
  return enums.UserSensitiveDtoRoles.values
          .firstWhereOrNull((e) => e.value == userSensitiveDtoRoles) ??
      defaultValue ??
      enums.UserSensitiveDtoRoles.swaggerGeneratedUnknown;
}

enums.UserSensitiveDtoRoles? userSensitiveDtoRolesNullableFromJson(
  Object? userSensitiveDtoRoles, [
  enums.UserSensitiveDtoRoles? defaultValue,
]) {
  if (userSensitiveDtoRoles == null) {
    return null;
  }
  return enums.UserSensitiveDtoRoles.values
          .firstWhereOrNull((e) => e.value == userSensitiveDtoRoles) ??
      defaultValue;
}

String userSensitiveDtoRolesExplodedListToJson(
    List<enums.UserSensitiveDtoRoles>? userSensitiveDtoRoles) {
  return userSensitiveDtoRoles?.map((e) => e.value!).join(',') ?? '';
}

List<String> userSensitiveDtoRolesListToJson(
    List<enums.UserSensitiveDtoRoles>? userSensitiveDtoRoles) {
  if (userSensitiveDtoRoles == null) {
    return [];
  }

  return userSensitiveDtoRoles.map((e) => e.value!).toList();
}

List<enums.UserSensitiveDtoRoles> userSensitiveDtoRolesListFromJson(
  List? userSensitiveDtoRoles, [
  List<enums.UserSensitiveDtoRoles>? defaultValue,
]) {
  if (userSensitiveDtoRoles == null) {
    return defaultValue ?? [];
  }

  return userSensitiveDtoRoles
      .map((e) => userSensitiveDtoRolesFromJson(e.toString()))
      .toList();
}

List<enums.UserSensitiveDtoRoles>? userSensitiveDtoRolesNullableListFromJson(
  List? userSensitiveDtoRoles, [
  List<enums.UserSensitiveDtoRoles>? defaultValue,
]) {
  if (userSensitiveDtoRoles == null) {
    return defaultValue;
  }

  return userSensitiveDtoRoles
      .map((e) => userSensitiveDtoRolesFromJson(e.toString()))
      .toList();
}

String? createHelpRequestDtoTypeNullableToJson(
    enums.CreateHelpRequestDtoType? createHelpRequestDtoType) {
  return createHelpRequestDtoType?.value;
}

String? createHelpRequestDtoTypeToJson(
    enums.CreateHelpRequestDtoType createHelpRequestDtoType) {
  return createHelpRequestDtoType.value;
}

enums.CreateHelpRequestDtoType createHelpRequestDtoTypeFromJson(
  Object? createHelpRequestDtoType, [
  enums.CreateHelpRequestDtoType? defaultValue,
]) {
  return enums.CreateHelpRequestDtoType.values
          .firstWhereOrNull((e) => e.value == createHelpRequestDtoType) ??
      defaultValue ??
      enums.CreateHelpRequestDtoType.swaggerGeneratedUnknown;
}

enums.CreateHelpRequestDtoType? createHelpRequestDtoTypeNullableFromJson(
  Object? createHelpRequestDtoType, [
  enums.CreateHelpRequestDtoType? defaultValue,
]) {
  if (createHelpRequestDtoType == null) {
    return null;
  }
  return enums.CreateHelpRequestDtoType.values
          .firstWhereOrNull((e) => e.value == createHelpRequestDtoType) ??
      defaultValue;
}

String createHelpRequestDtoTypeExplodedListToJson(
    List<enums.CreateHelpRequestDtoType>? createHelpRequestDtoType) {
  return createHelpRequestDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> createHelpRequestDtoTypeListToJson(
    List<enums.CreateHelpRequestDtoType>? createHelpRequestDtoType) {
  if (createHelpRequestDtoType == null) {
    return [];
  }

  return createHelpRequestDtoType.map((e) => e.value!).toList();
}

List<enums.CreateHelpRequestDtoType> createHelpRequestDtoTypeListFromJson(
  List? createHelpRequestDtoType, [
  List<enums.CreateHelpRequestDtoType>? defaultValue,
]) {
  if (createHelpRequestDtoType == null) {
    return defaultValue ?? [];
  }

  return createHelpRequestDtoType
      .map((e) => createHelpRequestDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.CreateHelpRequestDtoType>?
    createHelpRequestDtoTypeNullableListFromJson(
  List? createHelpRequestDtoType, [
  List<enums.CreateHelpRequestDtoType>? defaultValue,
]) {
  if (createHelpRequestDtoType == null) {
    return defaultValue;
  }

  return createHelpRequestDtoType
      .map((e) => createHelpRequestDtoTypeFromJson(e.toString()))
      .toList();
}

String? helpRequestDtoTypeNullableToJson(
    enums.HelpRequestDtoType? helpRequestDtoType) {
  return helpRequestDtoType?.value;
}

String? helpRequestDtoTypeToJson(enums.HelpRequestDtoType helpRequestDtoType) {
  return helpRequestDtoType.value;
}

enums.HelpRequestDtoType helpRequestDtoTypeFromJson(
  Object? helpRequestDtoType, [
  enums.HelpRequestDtoType? defaultValue,
]) {
  return enums.HelpRequestDtoType.values
          .firstWhereOrNull((e) => e.value == helpRequestDtoType) ??
      defaultValue ??
      enums.HelpRequestDtoType.swaggerGeneratedUnknown;
}

enums.HelpRequestDtoType? helpRequestDtoTypeNullableFromJson(
  Object? helpRequestDtoType, [
  enums.HelpRequestDtoType? defaultValue,
]) {
  if (helpRequestDtoType == null) {
    return null;
  }
  return enums.HelpRequestDtoType.values
          .firstWhereOrNull((e) => e.value == helpRequestDtoType) ??
      defaultValue;
}

String helpRequestDtoTypeExplodedListToJson(
    List<enums.HelpRequestDtoType>? helpRequestDtoType) {
  return helpRequestDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> helpRequestDtoTypeListToJson(
    List<enums.HelpRequestDtoType>? helpRequestDtoType) {
  if (helpRequestDtoType == null) {
    return [];
  }

  return helpRequestDtoType.map((e) => e.value!).toList();
}

List<enums.HelpRequestDtoType> helpRequestDtoTypeListFromJson(
  List? helpRequestDtoType, [
  List<enums.HelpRequestDtoType>? defaultValue,
]) {
  if (helpRequestDtoType == null) {
    return defaultValue ?? [];
  }

  return helpRequestDtoType
      .map((e) => helpRequestDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.HelpRequestDtoType>? helpRequestDtoTypeNullableListFromJson(
  List? helpRequestDtoType, [
  List<enums.HelpRequestDtoType>? defaultValue,
]) {
  if (helpRequestDtoType == null) {
    return defaultValue;
  }

  return helpRequestDtoType
      .map((e) => helpRequestDtoTypeFromJson(e.toString()))
      .toList();
}

String? helpRequestDtoStatusNullableToJson(
    enums.HelpRequestDtoStatus? helpRequestDtoStatus) {
  return helpRequestDtoStatus?.value;
}

String? helpRequestDtoStatusToJson(
    enums.HelpRequestDtoStatus helpRequestDtoStatus) {
  return helpRequestDtoStatus.value;
}

enums.HelpRequestDtoStatus helpRequestDtoStatusFromJson(
  Object? helpRequestDtoStatus, [
  enums.HelpRequestDtoStatus? defaultValue,
]) {
  return enums.HelpRequestDtoStatus.values
          .firstWhereOrNull((e) => e.value == helpRequestDtoStatus) ??
      defaultValue ??
      enums.HelpRequestDtoStatus.swaggerGeneratedUnknown;
}

enums.HelpRequestDtoStatus? helpRequestDtoStatusNullableFromJson(
  Object? helpRequestDtoStatus, [
  enums.HelpRequestDtoStatus? defaultValue,
]) {
  if (helpRequestDtoStatus == null) {
    return null;
  }
  return enums.HelpRequestDtoStatus.values
          .firstWhereOrNull((e) => e.value == helpRequestDtoStatus) ??
      defaultValue;
}

String helpRequestDtoStatusExplodedListToJson(
    List<enums.HelpRequestDtoStatus>? helpRequestDtoStatus) {
  return helpRequestDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> helpRequestDtoStatusListToJson(
    List<enums.HelpRequestDtoStatus>? helpRequestDtoStatus) {
  if (helpRequestDtoStatus == null) {
    return [];
  }

  return helpRequestDtoStatus.map((e) => e.value!).toList();
}

List<enums.HelpRequestDtoStatus> helpRequestDtoStatusListFromJson(
  List? helpRequestDtoStatus, [
  List<enums.HelpRequestDtoStatus>? defaultValue,
]) {
  if (helpRequestDtoStatus == null) {
    return defaultValue ?? [];
  }

  return helpRequestDtoStatus
      .map((e) => helpRequestDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.HelpRequestDtoStatus>? helpRequestDtoStatusNullableListFromJson(
  List? helpRequestDtoStatus, [
  List<enums.HelpRequestDtoStatus>? defaultValue,
]) {
  if (helpRequestDtoStatus == null) {
    return defaultValue;
  }

  return helpRequestDtoStatus
      .map((e) => helpRequestDtoStatusFromJson(e.toString()))
      .toList();
}

String? updateHelpRequestDtoTypeNullableToJson(
    enums.UpdateHelpRequestDtoType? updateHelpRequestDtoType) {
  return updateHelpRequestDtoType?.value;
}

String? updateHelpRequestDtoTypeToJson(
    enums.UpdateHelpRequestDtoType updateHelpRequestDtoType) {
  return updateHelpRequestDtoType.value;
}

enums.UpdateHelpRequestDtoType updateHelpRequestDtoTypeFromJson(
  Object? updateHelpRequestDtoType, [
  enums.UpdateHelpRequestDtoType? defaultValue,
]) {
  return enums.UpdateHelpRequestDtoType.values
          .firstWhereOrNull((e) => e.value == updateHelpRequestDtoType) ??
      defaultValue ??
      enums.UpdateHelpRequestDtoType.swaggerGeneratedUnknown;
}

enums.UpdateHelpRequestDtoType? updateHelpRequestDtoTypeNullableFromJson(
  Object? updateHelpRequestDtoType, [
  enums.UpdateHelpRequestDtoType? defaultValue,
]) {
  if (updateHelpRequestDtoType == null) {
    return null;
  }
  return enums.UpdateHelpRequestDtoType.values
          .firstWhereOrNull((e) => e.value == updateHelpRequestDtoType) ??
      defaultValue;
}

String updateHelpRequestDtoTypeExplodedListToJson(
    List<enums.UpdateHelpRequestDtoType>? updateHelpRequestDtoType) {
  return updateHelpRequestDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateHelpRequestDtoTypeListToJson(
    List<enums.UpdateHelpRequestDtoType>? updateHelpRequestDtoType) {
  if (updateHelpRequestDtoType == null) {
    return [];
  }

  return updateHelpRequestDtoType.map((e) => e.value!).toList();
}

List<enums.UpdateHelpRequestDtoType> updateHelpRequestDtoTypeListFromJson(
  List? updateHelpRequestDtoType, [
  List<enums.UpdateHelpRequestDtoType>? defaultValue,
]) {
  if (updateHelpRequestDtoType == null) {
    return defaultValue ?? [];
  }

  return updateHelpRequestDtoType
      .map((e) => updateHelpRequestDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.UpdateHelpRequestDtoType>?
    updateHelpRequestDtoTypeNullableListFromJson(
  List? updateHelpRequestDtoType, [
  List<enums.UpdateHelpRequestDtoType>? defaultValue,
]) {
  if (updateHelpRequestDtoType == null) {
    return defaultValue;
  }

  return updateHelpRequestDtoType
      .map((e) => updateHelpRequestDtoTypeFromJson(e.toString()))
      .toList();
}

String? updateHelpRequetStatusDtoStatusNullableToJson(
    enums.UpdateHelpRequetStatusDtoStatus? updateHelpRequetStatusDtoStatus) {
  return updateHelpRequetStatusDtoStatus?.value;
}

String? updateHelpRequetStatusDtoStatusToJson(
    enums.UpdateHelpRequetStatusDtoStatus updateHelpRequetStatusDtoStatus) {
  return updateHelpRequetStatusDtoStatus.value;
}

enums.UpdateHelpRequetStatusDtoStatus updateHelpRequetStatusDtoStatusFromJson(
  Object? updateHelpRequetStatusDtoStatus, [
  enums.UpdateHelpRequetStatusDtoStatus? defaultValue,
]) {
  return enums.UpdateHelpRequetStatusDtoStatus.values.firstWhereOrNull(
          (e) => e.value == updateHelpRequetStatusDtoStatus) ??
      defaultValue ??
      enums.UpdateHelpRequetStatusDtoStatus.swaggerGeneratedUnknown;
}

enums.UpdateHelpRequetStatusDtoStatus?
    updateHelpRequetStatusDtoStatusNullableFromJson(
  Object? updateHelpRequetStatusDtoStatus, [
  enums.UpdateHelpRequetStatusDtoStatus? defaultValue,
]) {
  if (updateHelpRequetStatusDtoStatus == null) {
    return null;
  }
  return enums.UpdateHelpRequetStatusDtoStatus.values.firstWhereOrNull(
          (e) => e.value == updateHelpRequetStatusDtoStatus) ??
      defaultValue;
}

String updateHelpRequetStatusDtoStatusExplodedListToJson(
    List<enums.UpdateHelpRequetStatusDtoStatus>?
        updateHelpRequetStatusDtoStatus) {
  return updateHelpRequetStatusDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateHelpRequetStatusDtoStatusListToJson(
    List<enums.UpdateHelpRequetStatusDtoStatus>?
        updateHelpRequetStatusDtoStatus) {
  if (updateHelpRequetStatusDtoStatus == null) {
    return [];
  }

  return updateHelpRequetStatusDtoStatus.map((e) => e.value!).toList();
}

List<enums.UpdateHelpRequetStatusDtoStatus>
    updateHelpRequetStatusDtoStatusListFromJson(
  List? updateHelpRequetStatusDtoStatus, [
  List<enums.UpdateHelpRequetStatusDtoStatus>? defaultValue,
]) {
  if (updateHelpRequetStatusDtoStatus == null) {
    return defaultValue ?? [];
  }

  return updateHelpRequetStatusDtoStatus
      .map((e) => updateHelpRequetStatusDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.UpdateHelpRequetStatusDtoStatus>?
    updateHelpRequetStatusDtoStatusNullableListFromJson(
  List? updateHelpRequetStatusDtoStatus, [
  List<enums.UpdateHelpRequetStatusDtoStatus>? defaultValue,
]) {
  if (updateHelpRequetStatusDtoStatus == null) {
    return defaultValue;
  }

  return updateHelpRequetStatusDtoStatus
      .map((e) => updateHelpRequetStatusDtoStatusFromJson(e.toString()))
      .toList();
}

String? createReferenceDtoTypeNullableToJson(
    enums.CreateReferenceDtoType? createReferenceDtoType) {
  return createReferenceDtoType?.value;
}

String? createReferenceDtoTypeToJson(
    enums.CreateReferenceDtoType createReferenceDtoType) {
  return createReferenceDtoType.value;
}

enums.CreateReferenceDtoType createReferenceDtoTypeFromJson(
  Object? createReferenceDtoType, [
  enums.CreateReferenceDtoType? defaultValue,
]) {
  return enums.CreateReferenceDtoType.values
          .firstWhereOrNull((e) => e.value == createReferenceDtoType) ??
      defaultValue ??
      enums.CreateReferenceDtoType.swaggerGeneratedUnknown;
}

enums.CreateReferenceDtoType? createReferenceDtoTypeNullableFromJson(
  Object? createReferenceDtoType, [
  enums.CreateReferenceDtoType? defaultValue,
]) {
  if (createReferenceDtoType == null) {
    return null;
  }
  return enums.CreateReferenceDtoType.values
          .firstWhereOrNull((e) => e.value == createReferenceDtoType) ??
      defaultValue;
}

String createReferenceDtoTypeExplodedListToJson(
    List<enums.CreateReferenceDtoType>? createReferenceDtoType) {
  return createReferenceDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> createReferenceDtoTypeListToJson(
    List<enums.CreateReferenceDtoType>? createReferenceDtoType) {
  if (createReferenceDtoType == null) {
    return [];
  }

  return createReferenceDtoType.map((e) => e.value!).toList();
}

List<enums.CreateReferenceDtoType> createReferenceDtoTypeListFromJson(
  List? createReferenceDtoType, [
  List<enums.CreateReferenceDtoType>? defaultValue,
]) {
  if (createReferenceDtoType == null) {
    return defaultValue ?? [];
  }

  return createReferenceDtoType
      .map((e) => createReferenceDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.CreateReferenceDtoType>? createReferenceDtoTypeNullableListFromJson(
  List? createReferenceDtoType, [
  List<enums.CreateReferenceDtoType>? defaultValue,
]) {
  if (createReferenceDtoType == null) {
    return defaultValue;
  }

  return createReferenceDtoType
      .map((e) => createReferenceDtoTypeFromJson(e.toString()))
      .toList();
}

String? referenceDtoTypeNullableToJson(
    enums.ReferenceDtoType? referenceDtoType) {
  return referenceDtoType?.value;
}

String? referenceDtoTypeToJson(enums.ReferenceDtoType referenceDtoType) {
  return referenceDtoType.value;
}

enums.ReferenceDtoType referenceDtoTypeFromJson(
  Object? referenceDtoType, [
  enums.ReferenceDtoType? defaultValue,
]) {
  return enums.ReferenceDtoType.values
          .firstWhereOrNull((e) => e.value == referenceDtoType) ??
      defaultValue ??
      enums.ReferenceDtoType.swaggerGeneratedUnknown;
}

enums.ReferenceDtoType? referenceDtoTypeNullableFromJson(
  Object? referenceDtoType, [
  enums.ReferenceDtoType? defaultValue,
]) {
  if (referenceDtoType == null) {
    return null;
  }
  return enums.ReferenceDtoType.values
          .firstWhereOrNull((e) => e.value == referenceDtoType) ??
      defaultValue;
}

String referenceDtoTypeExplodedListToJson(
    List<enums.ReferenceDtoType>? referenceDtoType) {
  return referenceDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> referenceDtoTypeListToJson(
    List<enums.ReferenceDtoType>? referenceDtoType) {
  if (referenceDtoType == null) {
    return [];
  }

  return referenceDtoType.map((e) => e.value!).toList();
}

List<enums.ReferenceDtoType> referenceDtoTypeListFromJson(
  List? referenceDtoType, [
  List<enums.ReferenceDtoType>? defaultValue,
]) {
  if (referenceDtoType == null) {
    return defaultValue ?? [];
  }

  return referenceDtoType
      .map((e) => referenceDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.ReferenceDtoType>? referenceDtoTypeNullableListFromJson(
  List? referenceDtoType, [
  List<enums.ReferenceDtoType>? defaultValue,
]) {
  if (referenceDtoType == null) {
    return defaultValue;
  }

  return referenceDtoType
      .map((e) => referenceDtoTypeFromJson(e.toString()))
      .toList();
}

String? updateReferenceDtoTypeNullableToJson(
    enums.UpdateReferenceDtoType? updateReferenceDtoType) {
  return updateReferenceDtoType?.value;
}

String? updateReferenceDtoTypeToJson(
    enums.UpdateReferenceDtoType updateReferenceDtoType) {
  return updateReferenceDtoType.value;
}

enums.UpdateReferenceDtoType updateReferenceDtoTypeFromJson(
  Object? updateReferenceDtoType, [
  enums.UpdateReferenceDtoType? defaultValue,
]) {
  return enums.UpdateReferenceDtoType.values
          .firstWhereOrNull((e) => e.value == updateReferenceDtoType) ??
      defaultValue ??
      enums.UpdateReferenceDtoType.swaggerGeneratedUnknown;
}

enums.UpdateReferenceDtoType? updateReferenceDtoTypeNullableFromJson(
  Object? updateReferenceDtoType, [
  enums.UpdateReferenceDtoType? defaultValue,
]) {
  if (updateReferenceDtoType == null) {
    return null;
  }
  return enums.UpdateReferenceDtoType.values
          .firstWhereOrNull((e) => e.value == updateReferenceDtoType) ??
      defaultValue;
}

String updateReferenceDtoTypeExplodedListToJson(
    List<enums.UpdateReferenceDtoType>? updateReferenceDtoType) {
  return updateReferenceDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateReferenceDtoTypeListToJson(
    List<enums.UpdateReferenceDtoType>? updateReferenceDtoType) {
  if (updateReferenceDtoType == null) {
    return [];
  }

  return updateReferenceDtoType.map((e) => e.value!).toList();
}

List<enums.UpdateReferenceDtoType> updateReferenceDtoTypeListFromJson(
  List? updateReferenceDtoType, [
  List<enums.UpdateReferenceDtoType>? defaultValue,
]) {
  if (updateReferenceDtoType == null) {
    return defaultValue ?? [];
  }

  return updateReferenceDtoType
      .map((e) => updateReferenceDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.UpdateReferenceDtoType>? updateReferenceDtoTypeNullableListFromJson(
  List? updateReferenceDtoType, [
  List<enums.UpdateReferenceDtoType>? defaultValue,
]) {
  if (updateReferenceDtoType == null) {
    return defaultValue;
  }

  return updateReferenceDtoType
      .map((e) => updateReferenceDtoTypeFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
