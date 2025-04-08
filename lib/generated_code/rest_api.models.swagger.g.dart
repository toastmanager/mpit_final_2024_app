// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestOTPDto _$RequestOTPDtoFromJson(Map<String, dynamic> json) =>
    RequestOTPDto(
      tel: json['tel'] as String,
    );

Map<String, dynamic> _$RequestOTPDtoToJson(RequestOTPDto instance) =>
    <String, dynamic>{
      'tel': instance.tel,
    };

VerifyOTPDto _$VerifyOTPDtoFromJson(Map<String, dynamic> json) => VerifyOTPDto(
      tel: json['tel'] as String,
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$VerifyOTPDtoToJson(VerifyOTPDto instance) =>
    <String, dynamic>{
      'tel': instance.tel,
      'otp': instance.otp,
    };

AuthTokenDto _$AuthTokenDtoFromJson(Map<String, dynamic> json) => AuthTokenDto(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$AuthTokenDtoToJson(AuthTokenDto instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

RefreshTokenDto _$RefreshTokenDtoFromJson(Map<String, dynamic> json) =>
    RefreshTokenDto(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$RefreshTokenDtoToJson(RefreshTokenDto instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

LogoutDto _$LogoutDtoFromJson(Map<String, dynamic> json) => LogoutDto(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$LogoutDtoToJson(LogoutDto instance) => <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

UserSensitiveDto _$UserSensitiveDtoFromJson(Map<String, dynamic> json) =>
    UserSensitiveDto(
      id: (json['id'] as num).toDouble(),
      username: json['username'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      tel: json['tel'] as String,
      roles: userSensitiveDtoRolesListFromJson(json['roles'] as List?),
    );

Map<String, dynamic> _$UserSensitiveDtoToJson(UserSensitiveDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatarUrl': instance.avatarUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'tel': instance.tel,
      'roles': userSensitiveDtoRolesListToJson(instance.roles),
    };

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) =>
    CreateUserDto(
      tel: json['tel'] as String,
    );

Map<String, dynamic> _$CreateUserDtoToJson(CreateUserDto instance) =>
    <String, dynamic>{
      'tel': instance.tel,
    };

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      id: (json['id'] as num).toDouble(),
      username: json['username'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatarUrl': instance.avatarUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    UpdateUserDto(
      tel: json['tel'] as String?,
    );

Map<String, dynamic> _$UpdateUserDtoToJson(UpdateUserDto instance) =>
    <String, dynamic>{
      'tel': instance.tel,
    };

SendMessageDto _$SendMessageDtoFromJson(Map<String, dynamic> json) =>
    SendMessageDto(
      message: json['message'] as String,
      history: json['history'] as String?,
    );

Map<String, dynamic> _$SendMessageDtoToJson(SendMessageDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'history': instance.history,
    };

CreateEmbeddingDto _$CreateEmbeddingDtoFromJson(Map<String, dynamic> json) =>
    CreateEmbeddingDto(
      text: json['text'] as String,
    );

Map<String, dynamic> _$CreateEmbeddingDtoToJson(CreateEmbeddingDto instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

CreateArticleDto _$CreateArticleDtoFromJson(Map<String, dynamic> json) =>
    CreateArticleDto(
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$CreateArticleDtoToJson(CreateArticleDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
    };

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) => ArticleDto(
      id: (json['id'] as num).toDouble(),
      slug: json['slug'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
      bannerUrl: json['bannerUrl'] as String?,
      author: UserDto.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ArticleDtoToJson(ArticleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'title': instance.title,
      'text': instance.text,
      'bannerUrl': instance.bannerUrl,
      'author': instance.author.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

UpdateArticleDto _$UpdateArticleDtoFromJson(Map<String, dynamic> json) =>
    UpdateArticleDto(
      title: json['title'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$UpdateArticleDtoToJson(UpdateArticleDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
    };

AskArticlesChatbotDto _$AskArticlesChatbotDtoFromJson(
        Map<String, dynamic> json) =>
    AskArticlesChatbotDto(
      history: json['history'] as String,
    );

Map<String, dynamic> _$AskArticlesChatbotDtoToJson(
        AskArticlesChatbotDto instance) =>
    <String, dynamic>{
      'history': instance.history,
    };

CreateHelpRequestDto _$CreateHelpRequestDtoFromJson(
        Map<String, dynamic> json) =>
    CreateHelpRequestDto(
      text: json['text'] as String,
      type: createHelpRequestDtoTypeFromJson(json['type']),
    );

Map<String, dynamic> _$CreateHelpRequestDtoToJson(
        CreateHelpRequestDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': createHelpRequestDtoTypeToJson(instance.type),
    };

HelpRequestDto _$HelpRequestDtoFromJson(Map<String, dynamic> json) =>
    HelpRequestDto(
      uuid: json['uuid'] as String,
      text: json['text'] as String,
      requesterId: (json['requesterId'] as num).toDouble(),
      volunteerId: (json['volunteerId'] as num?)?.toDouble(),
      type: helpRequestDtoTypeFromJson(json['type']),
      status: helpRequestDtoStatusFromJson(json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$HelpRequestDtoToJson(HelpRequestDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'text': instance.text,
      'requesterId': instance.requesterId,
      'volunteerId': instance.volunteerId,
      'type': helpRequestDtoTypeToJson(instance.type),
      'status': helpRequestDtoStatusToJson(instance.status),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

UpdateHelpRequestDto _$UpdateHelpRequestDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateHelpRequestDto(
      text: json['text'] as String?,
      type: updateHelpRequestDtoTypeNullableFromJson(json['type']),
    );

Map<String, dynamic> _$UpdateHelpRequestDtoToJson(
        UpdateHelpRequestDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': updateHelpRequestDtoTypeNullableToJson(instance.type),
    };

CreateHelpRequestFeedbackDto _$CreateHelpRequestFeedbackDtoFromJson(
        Map<String, dynamic> json) =>
    CreateHelpRequestFeedbackDto(
      text: json['text'] as String,
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$CreateHelpRequestFeedbackDtoToJson(
        CreateHelpRequestFeedbackDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'score': instance.score,
    };

HelpRequestFeedbackDto _$HelpRequestFeedbackDtoFromJson(
        Map<String, dynamic> json) =>
    HelpRequestFeedbackDto(
      helpRequestUuid: json['helpRequestUuid'] as String,
      text: json['text'] as String,
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$HelpRequestFeedbackDtoToJson(
        HelpRequestFeedbackDto instance) =>
    <String, dynamic>{
      'helpRequestUuid': instance.helpRequestUuid,
      'text': instance.text,
      'score': instance.score,
    };

UpdateHelpRequetStatusDto _$UpdateHelpRequetStatusDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateHelpRequetStatusDto(
      status: updateHelpRequetStatusDtoStatusFromJson(json['status']),
    );

Map<String, dynamic> _$UpdateHelpRequetStatusDtoToJson(
        UpdateHelpRequetStatusDto instance) =>
    <String, dynamic>{
      'status': updateHelpRequetStatusDtoStatusToJson(instance.status),
    };

ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) => ContactDto(
      id: (json['id'] as num).toDouble(),
      referenceId: (json['referenceId'] as num?)?.toDouble(),
      contact: json['contact'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ContactDtoToJson(ContactDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
      'contact': instance.contact,
      'type': instance.type,
    };

CreateReferenceDto _$CreateReferenceDtoFromJson(Map<String, dynamic> json) =>
    CreateReferenceDto(
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      title: json['title'] as String,
      type: createReferenceDtoTypeFromJson(json['type']),
      description: json['description'] as String?,
      capacity: (json['capacity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CreateReferenceDtoToJson(CreateReferenceDto instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
      'title': instance.title,
      'type': createReferenceDtoTypeToJson(instance.type),
      'description': instance.description,
      'capacity': instance.capacity,
    };

ReferenceDto _$ReferenceDtoFromJson(Map<String, dynamic> json) => ReferenceDto(
      id: (json['id'] as num).toDouble(),
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      title: json['title'] as String,
      type: referenceDtoTypeFromJson(json['type']),
      description: json['description'] as String?,
      capacity: (json['capacity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ReferenceDtoToJson(ReferenceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addresses': instance.addresses,
      'title': instance.title,
      'type': referenceDtoTypeToJson(instance.type),
      'description': instance.description,
      'capacity': instance.capacity,
    };

UpdateReferenceDto _$UpdateReferenceDtoFromJson(Map<String, dynamic> json) =>
    UpdateReferenceDto(
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      title: json['title'] as String?,
      type: updateReferenceDtoTypeNullableFromJson(json['type']),
      description: json['description'] as String?,
      capacity: (json['capacity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpdateReferenceDtoToJson(UpdateReferenceDto instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
      'title': instance.title,
      'type': updateReferenceDtoTypeNullableToJson(instance.type),
      'description': instance.description,
      'capacity': instance.capacity,
    };

CreateContactDto _$CreateContactDtoFromJson(Map<String, dynamic> json) =>
    CreateContactDto(
      contact: json['contact'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$CreateContactDtoToJson(CreateContactDto instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'type': instance.type,
    };
