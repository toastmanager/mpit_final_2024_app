// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$RestApi extends RestApi {
  _$RestApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = RestApi;

  @override
  Future<Response<dynamic>> _v1AuthOtpRequestPost(
      {required RequestOTPDto? body}) {
    final Uri $url = Uri.parse('/v1/auth/otp/request');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AuthTokenDto>> _v1AuthOtpVerifyPost(
      {required VerifyOTPDto? body}) {
    final Uri $url = Uri.parse('/v1/auth/otp/verify');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthTokenDto, AuthTokenDto>($request);
  }

  @override
  Future<Response<AuthTokenDto>> _v1AuthRefreshPost(
      {required RefreshTokenDto? body}) {
    final Uri $url = Uri.parse('/v1/auth/refresh');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthTokenDto, AuthTokenDto>($request);
  }

  @override
  Future<Response<dynamic>> _v1AuthLogoutPost({required LogoutDto? body}) {
    final Uri $url = Uri.parse('/v1/auth/logout');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserSensitiveDto>> _v1AuthMeGet() {
    final Uri $url = Uri.parse('/v1/auth/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserSensitiveDto, UserSensitiveDto>($request);
  }

  @override
  Future<Response<UserDto>> _v1UsersPost({required CreateUserDto? body}) {
    final Uri $url = Uri.parse('/v1/users');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserDto, UserDto>($request);
  }

  @override
  Future<Response<List<UserDto>>> _v1UsersGet() {
    final Uri $url = Uri.parse('/v1/users');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<UserDto>, UserDto>($request);
  }

  @override
  Future<Response<UserDto>> _v1UsersIdGet({required String? id}) {
    final Uri $url = Uri.parse('/v1/users/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDto, UserDto>($request);
  }

  @override
  Future<Response<UserDto>> _v1UsersIdPatch({
    required String? id,
    required UpdateUserDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/users/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserDto, UserDto>($request);
  }

  @override
  Future<Response<UserDto>> _v1UsersIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/v1/users/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<UserDto, UserDto>($request);
  }

  @override
  Future<Response<ArticleDto>> _v1ArticlesPost(
      {required CreateArticleDto? body}) {
    final Uri $url = Uri.parse('/v1/articles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ArticleDto, ArticleDto>($request);
  }

  @override
  Future<Response<List<ArticleDto>>> _v1ArticlesGet() {
    final Uri $url = Uri.parse('/v1/articles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ArticleDto>, ArticleDto>($request);
  }

  @override
  Future<Response<ArticleDto>> _v1ArticlesIdGet({required String? id}) {
    final Uri $url = Uri.parse('/v1/articles/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ArticleDto, ArticleDto>($request);
  }

  @override
  Future<Response<ArticleDto>> _v1ArticlesIdPatch({
    required String? id,
    required UpdateArticleDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/articles/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ArticleDto, ArticleDto>($request);
  }

  @override
  Future<Response<ArticleDto>> _v1ArticlesIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/v1/articles/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<ArticleDto, ArticleDto>($request);
  }

  @override
  Future<Response<String>> _v1ArticlesChatbotQueryGet({
    required String? query,
    required AskArticlesChatbotDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/articles/chatbot/${query}');
    final $body = body;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<ArticleDto>>> _v1ArticlesMeaningSearchQueryGet(
      {required String? query}) {
    final Uri $url = Uri.parse('/v1/articles/meaning-search/${query}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ArticleDto>, ArticleDto>($request);
  }

  @override
  Future<Response<dynamic>> _v1ArticlesIdBannerPut({
    required String? id,
    String? file,
  }) {
    final Uri $url = Uri.parse('/v1/articles/${id}/banner');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<String?>(
        'file',
        file,
      )
    ];
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _v1ArticlesIdBannerDelete({required String? id}) {
    final Uri $url = Uri.parse('/v1/articles/${id}/banner');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<HelpRequestDto>> _v1HelpRequestsPost(
      {required CreateHelpRequestDto? body}) {
    final Uri $url = Uri.parse('/v1/help-requests');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<HelpRequestDto, HelpRequestDto>($request);
  }

  @override
  Future<Response<List<HelpRequestDto>>> _v1HelpRequestsGet() {
    final Uri $url = Uri.parse('/v1/help-requests');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<HelpRequestDto>, HelpRequestDto>($request);
  }

  @override
  Future<Response<HelpRequestDto>> _v1HelpRequestsUuidGet(
      {required String? uuid}) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<HelpRequestDto, HelpRequestDto>($request);
  }

  @override
  Future<Response<HelpRequestDto>> _v1HelpRequestsUuidPatch({
    required String? uuid,
    required UpdateHelpRequestDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<HelpRequestDto, HelpRequestDto>($request);
  }

  @override
  Future<Response<HelpRequestDto>> _v1HelpRequestsUuidDelete(
      {required String? uuid}) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<HelpRequestDto, HelpRequestDto>($request);
  }

  @override
  Future<Response<HelpRequestDto>> _v1HelpRequestsUuidVolunteerPost(
      {required String? uuid}) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}/volunteer');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<HelpRequestDto, HelpRequestDto>($request);
  }

  @override
  Future<Response<HelpRequestDto>> _v1HelpRequestsUuidVolunteerDelete(
      {required String? uuid}) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}/volunteer');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<HelpRequestDto, HelpRequestDto>($request);
  }

  @override
  Future<Response<HelpRequestFeedbackDto>> _v1HelpRequestsUuidFeedbackPost({
    required String? uuid,
    required CreateHelpRequestFeedbackDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}/feedback');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<HelpRequestFeedbackDto, HelpRequestFeedbackDto>($request);
  }

  @override
  Future<Response<HelpRequestFeedbackDto>> _v1HelpRequestsUuidFeedbackDelete(
      {required String? uuid}) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}/feedback');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<HelpRequestFeedbackDto, HelpRequestFeedbackDto>($request);
  }

  @override
  Future<Response<HelpRequestFeedbackDto>> _v1HelpRequestsUuidStatusPut({
    required String? uuid,
    required UpdateHelpRequetStatusDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/help-requests/${uuid}/status');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<HelpRequestFeedbackDto, HelpRequestFeedbackDto>($request);
  }

  @override
  Future<Response<ContactDto>> _v1ReferencesContactsContactIdDelete(
      {required String? contactId}) {
    final Uri $url = Uri.parse('/v1/references/contacts/${contactId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<ContactDto, ContactDto>($request);
  }

  @override
  Future<Response<ReferenceDto>> _v1ReferencesPost(
      {required CreateReferenceDto? body}) {
    final Uri $url = Uri.parse('/v1/references');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ReferenceDto, ReferenceDto>($request);
  }

  @override
  Future<Response<List<ReferenceDto>>> _v1ReferencesGet() {
    final Uri $url = Uri.parse('/v1/references');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ReferenceDto>, ReferenceDto>($request);
  }

  @override
  Future<Response<ReferenceDto>> _v1ReferencesIdGet({required String? id}) {
    final Uri $url = Uri.parse('/v1/references/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ReferenceDto, ReferenceDto>($request);
  }

  @override
  Future<Response<ReferenceDto>> _v1ReferencesIdPatch({
    required String? id,
    required UpdateReferenceDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/references/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ReferenceDto, ReferenceDto>($request);
  }

  @override
  Future<Response<dynamic>> _v1ReferencesIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/v1/references/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ContactDto>> _v1ReferencesIdContactsPost({
    required String? id,
    required CreateContactDto? body,
  }) {
    final Uri $url = Uri.parse('/v1/references/${id}/contacts');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ContactDto, ContactDto>($request);
  }
}
