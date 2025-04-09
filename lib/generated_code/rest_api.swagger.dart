// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'rest_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'rest_api.enums.swagger.dart' as enums;
export 'rest_api.enums.swagger.dart';
export 'rest_api.models.swagger.dart';

part 'rest_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class RestApi extends ChopperService {
  static RestApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$RestApi(client);
    }

    final newClient = ChopperClient(
        services: [_$RestApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$RestApi(newClient);
  }

  ///
  Future<chopper.Response> v1AuthOtpRequestPost(
      {required RequestOTPDto? body}) {
    return _v1AuthOtpRequestPost(body: body);
  }

  ///
  @Post(
    path: '/v1/auth/otp/request',
    optionalBody: true,
  )
  Future<chopper.Response> _v1AuthOtpRequestPost(
      {@Body() required RequestOTPDto? body});

  ///
  Future<chopper.Response<AuthTokenDto>> v1AuthOtpVerifyPost(
      {required VerifyOTPDto? body}) {
    generatedMapping.putIfAbsent(
        AuthTokenDto, () => AuthTokenDto.fromJsonFactory);

    return _v1AuthOtpVerifyPost(body: body);
  }

  ///
  @Post(
    path: '/v1/auth/otp/verify',
    optionalBody: true,
  )
  Future<chopper.Response<AuthTokenDto>> _v1AuthOtpVerifyPost(
      {@Body() required VerifyOTPDto? body});

  ///
  Future<chopper.Response<AuthTokenDto>> v1AuthRefreshPost(
      {required RefreshTokenDto? body}) {
    generatedMapping.putIfAbsent(
        AuthTokenDto, () => AuthTokenDto.fromJsonFactory);

    return _v1AuthRefreshPost(body: body);
  }

  ///
  @Post(
    path: '/v1/auth/refresh',
    optionalBody: true,
  )
  Future<chopper.Response<AuthTokenDto>> _v1AuthRefreshPost(
      {@Body() required RefreshTokenDto? body});

  ///
  Future<chopper.Response> v1AuthLogoutPost({required LogoutDto? body}) {
    return _v1AuthLogoutPost(body: body);
  }

  ///
  @Post(
    path: '/v1/auth/logout',
    optionalBody: true,
  )
  Future<chopper.Response> _v1AuthLogoutPost(
      {@Body() required LogoutDto? body});

  ///
  Future<chopper.Response<UserSensitiveDto>> v1AuthMeGet() {
    generatedMapping.putIfAbsent(
        UserSensitiveDto, () => UserSensitiveDto.fromJsonFactory);

    return _v1AuthMeGet();
  }

  ///
  @Get(path: '/v1/auth/me')
  Future<chopper.Response<UserSensitiveDto>> _v1AuthMeGet();

  ///
  Future<chopper.Response<UserDto>> v1UsersPost(
      {required CreateUserDto? body}) {
    generatedMapping.putIfAbsent(UserDto, () => UserDto.fromJsonFactory);

    return _v1UsersPost(body: body);
  }

  ///
  @Post(
    path: '/v1/users',
    optionalBody: true,
  )
  Future<chopper.Response<UserDto>> _v1UsersPost(
      {@Body() required CreateUserDto? body});

  ///
  Future<chopper.Response<List<UserDto>>> v1UsersGet() {
    generatedMapping.putIfAbsent(UserDto, () => UserDto.fromJsonFactory);

    return _v1UsersGet();
  }

  ///
  @Get(path: '/v1/users')
  Future<chopper.Response<List<UserDto>>> _v1UsersGet();

  ///
  ///@param id
  Future<chopper.Response<UserDto>> v1UsersIdGet({required String? id}) {
    generatedMapping.putIfAbsent(UserDto, () => UserDto.fromJsonFactory);

    return _v1UsersIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/users/{id}')
  Future<chopper.Response<UserDto>> _v1UsersIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<UserDto>> v1UsersIdPatch({
    required String? id,
    required UpdateUserDto? body,
  }) {
    generatedMapping.putIfAbsent(UserDto, () => UserDto.fromJsonFactory);

    return _v1UsersIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @Patch(
    path: '/v1/users/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<UserDto>> _v1UsersIdPatch({
    @Path('id') required String? id,
    @Body() required UpdateUserDto? body,
  });

  ///
  ///@param id
  Future<chopper.Response<UserDto>> v1UsersIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(UserDto, () => UserDto.fromJsonFactory);

    return _v1UsersIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/users/{id}')
  Future<chopper.Response<UserDto>> _v1UsersIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<ArticleDto>> v1ArticlesPost(
      {required CreateArticleDto? body}) {
    generatedMapping.putIfAbsent(ArticleDto, () => ArticleDto.fromJsonFactory);

    return _v1ArticlesPost(body: body);
  }

  ///
  @Post(
    path: '/v1/articles',
    optionalBody: true,
  )
  Future<chopper.Response<ArticleDto>> _v1ArticlesPost(
      {@Body() required CreateArticleDto? body});

  ///
  Future<chopper.Response<List<ArticleDto>>> v1ArticlesGet() {
    generatedMapping.putIfAbsent(ArticleDto, () => ArticleDto.fromJsonFactory);

    return _v1ArticlesGet();
  }

  ///
  @Get(path: '/v1/articles')
  Future<chopper.Response<List<ArticleDto>>> _v1ArticlesGet();

  ///
  ///@param id
  Future<chopper.Response<ArticleDto>> v1ArticlesIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ArticleDto, () => ArticleDto.fromJsonFactory);

    return _v1ArticlesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/articles/{id}')
  Future<chopper.Response<ArticleDto>> _v1ArticlesIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<ArticleDto>> v1ArticlesIdPatch({
    required String? id,
    required UpdateArticleDto? body,
  }) {
    generatedMapping.putIfAbsent(ArticleDto, () => ArticleDto.fromJsonFactory);

    return _v1ArticlesIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @Patch(
    path: '/v1/articles/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<ArticleDto>> _v1ArticlesIdPatch({
    @Path('id') required String? id,
    @Body() required UpdateArticleDto? body,
  });

  ///
  ///@param id
  Future<chopper.Response<ArticleDto>> v1ArticlesIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(ArticleDto, () => ArticleDto.fromJsonFactory);

    return _v1ArticlesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/articles/{id}')
  Future<chopper.Response<ArticleDto>> _v1ArticlesIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param query
  Future<chopper.Response<String>> v1ArticlesChatbotQueryGet({
    required String? query,
    required AskArticlesChatbotDto? body,
  }) {
    return _v1ArticlesChatbotQueryGet(query: query, body: body);
  }

  ///
  ///@param query
  @Get(path: '/v1/articles/chatbot/{query}')
  Future<chopper.Response<String>> _v1ArticlesChatbotQueryGet({
    @Path('query') required String? query,
    @Body() required AskArticlesChatbotDto? body,
  });

  ///
  ///@param query
  Future<chopper.Response<List<ArticleDto>>> v1ArticlesMeaningSearchQueryGet(
      {required String? query}) {
    generatedMapping.putIfAbsent(ArticleDto, () => ArticleDto.fromJsonFactory);

    return _v1ArticlesMeaningSearchQueryGet(query: query);
  }

  ///
  ///@param query
  @Get(path: '/v1/articles/meaning-search/{query}')
  Future<chopper.Response<List<ArticleDto>>> _v1ArticlesMeaningSearchQueryGet(
      {@Path('query') required String? query});

  ///
  ///@param id
  Future<chopper.Response> v1ArticlesIdBannerPut({
    required String? id,
    String? file,
  }) {
    return _v1ArticlesIdBannerPut(id: id, file: file);
  }

  ///
  ///@param id
  @Put(
    path: '/v1/articles/{id}/banner',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response> _v1ArticlesIdBannerPut({
    @Path('id') required String? id,
    @PartFile() String? file,
  });

  ///
  ///@param id
  Future<chopper.Response> v1ArticlesIdBannerDelete({required String? id}) {
    return _v1ArticlesIdBannerDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/articles/{id}/banner')
  Future<chopper.Response> _v1ArticlesIdBannerDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<HelpRequestDto>> v1HelpRequestsPost(
      {required CreateHelpRequestDto? body}) {
    generatedMapping.putIfAbsent(
        HelpRequestDto, () => HelpRequestDto.fromJsonFactory);

    return _v1HelpRequestsPost(body: body);
  }

  ///
  @Post(
    path: '/v1/help-requests',
    optionalBody: true,
  )
  Future<chopper.Response<HelpRequestDto>> _v1HelpRequestsPost(
      {@Body() required CreateHelpRequestDto? body});

  ///
  Future<chopper.Response<List<HelpRequestDto>>> v1HelpRequestsGet() {
    generatedMapping.putIfAbsent(
        HelpRequestDto, () => HelpRequestDto.fromJsonFactory);

    return _v1HelpRequestsGet();
  }

  ///
  @Get(path: '/v1/help-requests')
  Future<chopper.Response<List<HelpRequestDto>>> _v1HelpRequestsGet();

  ///
  ///@param uuid
  Future<chopper.Response<HelpRequestDto>> v1HelpRequestsUuidGet(
      {required String? uuid}) {
    generatedMapping.putIfAbsent(
        HelpRequestDto, () => HelpRequestDto.fromJsonFactory);

    return _v1HelpRequestsUuidGet(uuid: uuid);
  }

  ///
  ///@param uuid
  @Get(path: '/v1/help-requests/{uuid}')
  Future<chopper.Response<HelpRequestDto>> _v1HelpRequestsUuidGet(
      {@Path('uuid') required String? uuid});

  ///
  ///@param uuid
  Future<chopper.Response<HelpRequestDto>> v1HelpRequestsUuidPatch({
    required String? uuid,
    required UpdateHelpRequestDto? body,
  }) {
    generatedMapping.putIfAbsent(
        HelpRequestDto, () => HelpRequestDto.fromJsonFactory);

    return _v1HelpRequestsUuidPatch(uuid: uuid, body: body);
  }

  ///
  ///@param uuid
  @Patch(
    path: '/v1/help-requests/{uuid}',
    optionalBody: true,
  )
  Future<chopper.Response<HelpRequestDto>> _v1HelpRequestsUuidPatch({
    @Path('uuid') required String? uuid,
    @Body() required UpdateHelpRequestDto? body,
  });

  ///
  ///@param uuid
  Future<chopper.Response<HelpRequestDto>> v1HelpRequestsUuidDelete(
      {required String? uuid}) {
    generatedMapping.putIfAbsent(
        HelpRequestDto, () => HelpRequestDto.fromJsonFactory);

    return _v1HelpRequestsUuidDelete(uuid: uuid);
  }

  ///
  ///@param uuid
  @Delete(path: '/v1/help-requests/{uuid}')
  Future<chopper.Response<HelpRequestDto>> _v1HelpRequestsUuidDelete(
      {@Path('uuid') required String? uuid});

  ///
  ///@param uuid
  Future<chopper.Response<HelpRequestDto>> v1HelpRequestsUuidVolunteerDelete(
      {required String? uuid}) {
    generatedMapping.putIfAbsent(
        HelpRequestDto, () => HelpRequestDto.fromJsonFactory);

    return _v1HelpRequestsUuidVolunteerDelete(uuid: uuid);
  }

  ///
  ///@param uuid
  @Delete(path: '/v1/help-requests/{uuid}/volunteer')
  Future<chopper.Response<HelpRequestDto>> _v1HelpRequestsUuidVolunteerDelete(
      {@Path('uuid') required String? uuid});

  ///
  ///@param uuid
  Future<chopper.Response<HelpRequestFeedbackDto>>
      v1HelpRequestsUuidFeedbackPost({
    required String? uuid,
    required CreateHelpRequestFeedbackDto? body,
  }) {
    generatedMapping.putIfAbsent(
        HelpRequestFeedbackDto, () => HelpRequestFeedbackDto.fromJsonFactory);

    return _v1HelpRequestsUuidFeedbackPost(uuid: uuid, body: body);
  }

  ///
  ///@param uuid
  @Post(
    path: '/v1/help-requests/{uuid}/feedback',
    optionalBody: true,
  )
  Future<chopper.Response<HelpRequestFeedbackDto>>
      _v1HelpRequestsUuidFeedbackPost({
    @Path('uuid') required String? uuid,
    @Body() required CreateHelpRequestFeedbackDto? body,
  });

  ///
  ///@param uuid
  Future<chopper.Response<HelpRequestFeedbackDto>>
      v1HelpRequestsUuidFeedbackDelete({required String? uuid}) {
    generatedMapping.putIfAbsent(
        HelpRequestFeedbackDto, () => HelpRequestFeedbackDto.fromJsonFactory);

    return _v1HelpRequestsUuidFeedbackDelete(uuid: uuid);
  }

  ///
  ///@param uuid
  @Delete(path: '/v1/help-requests/{uuid}/feedback')
  Future<chopper.Response<HelpRequestFeedbackDto>>
      _v1HelpRequestsUuidFeedbackDelete({@Path('uuid') required String? uuid});

  ///
  ///@param uuid
  Future<chopper.Response<HelpRequestFeedbackDto>> v1HelpRequestsUuidStatusPut({
    required String? uuid,
    required UpdateHelpRequetStatusDto? body,
  }) {
    generatedMapping.putIfAbsent(
        HelpRequestFeedbackDto, () => HelpRequestFeedbackDto.fromJsonFactory);

    return _v1HelpRequestsUuidStatusPut(uuid: uuid, body: body);
  }

  ///
  ///@param uuid
  @Put(
    path: '/v1/help-requests/{uuid}/status',
    optionalBody: true,
  )
  Future<chopper.Response<HelpRequestFeedbackDto>>
      _v1HelpRequestsUuidStatusPut({
    @Path('uuid') required String? uuid,
    @Body() required UpdateHelpRequetStatusDto? body,
  });

  ///
  ///@param contact_id
  Future<chopper.Response<ContactDto>> v1ReferencesContactsContactIdDelete(
      {required String? contactId}) {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _v1ReferencesContactsContactIdDelete(contactId: contactId);
  }

  ///
  ///@param contact_id
  @Delete(path: '/v1/references/contacts/{contact_id}')
  Future<chopper.Response<ContactDto>> _v1ReferencesContactsContactIdDelete(
      {@Path('contact_id') required String? contactId});

  ///
  Future<chopper.Response<ReferenceDto>> v1ReferencesPost(
      {required CreateReferenceDto? body}) {
    generatedMapping.putIfAbsent(
        ReferenceDto, () => ReferenceDto.fromJsonFactory);

    return _v1ReferencesPost(body: body);
  }

  ///
  @Post(
    path: '/v1/references',
    optionalBody: true,
  )
  Future<chopper.Response<ReferenceDto>> _v1ReferencesPost(
      {@Body() required CreateReferenceDto? body});

  ///
  Future<chopper.Response<List<ReferenceDto>>> v1ReferencesGet() {
    generatedMapping.putIfAbsent(
        ReferenceDto, () => ReferenceDto.fromJsonFactory);

    return _v1ReferencesGet();
  }

  ///
  @Get(path: '/v1/references')
  Future<chopper.Response<List<ReferenceDto>>> _v1ReferencesGet();

  ///
  ///@param id
  Future<chopper.Response<ReferenceDto>> v1ReferencesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ReferenceDto, () => ReferenceDto.fromJsonFactory);

    return _v1ReferencesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/v1/references/{id}')
  Future<chopper.Response<ReferenceDto>> _v1ReferencesIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<ReferenceDto>> v1ReferencesIdPatch({
    required String? id,
    required UpdateReferenceDto? body,
  }) {
    generatedMapping.putIfAbsent(
        ReferenceDto, () => ReferenceDto.fromJsonFactory);

    return _v1ReferencesIdPatch(id: id, body: body);
  }

  ///
  ///@param id
  @Patch(
    path: '/v1/references/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<ReferenceDto>> _v1ReferencesIdPatch({
    @Path('id') required String? id,
    @Body() required UpdateReferenceDto? body,
  });

  ///
  ///@param id
  Future<chopper.Response> v1ReferencesIdDelete({required String? id}) {
    return _v1ReferencesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/v1/references/{id}')
  Future<chopper.Response> _v1ReferencesIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<ContactDto>> v1ReferencesIdContactsPost({
    required String? id,
    required CreateContactDto? body,
  }) {
    generatedMapping.putIfAbsent(ContactDto, () => ContactDto.fromJsonFactory);

    return _v1ReferencesIdContactsPost(id: id, body: body);
  }

  ///
  ///@param id
  @Post(
    path: '/v1/references/{id}/contacts',
    optionalBody: true,
  )
  Future<chopper.Response<ContactDto>> _v1ReferencesIdContactsPost({
    @Path('id') required String? id,
    @Body() required CreateContactDto? body,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
