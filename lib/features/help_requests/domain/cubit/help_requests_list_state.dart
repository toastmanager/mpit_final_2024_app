part of 'help_requests_list_cubit.dart';

@freezed
class HelpRequestsListState with _$HelpRequestsListState {
  const factory HelpRequestsListState.initial({
    required List<HelpRequestDto> helpRequests,
  }) = _Initial;
}
