import 'package:injectable/injectable.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/repositories/help_requests_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';

@Injectable(as: HelpRequestsRepository)
class HelpRequestsRepositoryImpl extends HelpRequestsRepository {
  HelpRequestsRepositoryImpl({required this.restApi});

  final RestApi restApi;

  @override
  Future<List<HelpRequestDto>> findAll() async {
    final response = await restApi.v1HelpRequestsGet();
    final helpRequests = response.body ?? [];
    return helpRequests;
  }

  @override
  Future<HelpRequestDto?> findOne(String uuid) async {
    final response = await restApi.v1HelpRequestsUuidGet(uuid: uuid);
    final helpRequest = response.body;
    return helpRequest;
  }

  @override
  String getStatusString(HelpRequestDtoStatus status) {
    switch (status) {
      case HelpRequestDtoStatus.created:
        return 'На рассмотрении';
      case HelpRequestDtoStatus.volunteerFound:
        return 'Найден волонтер';
      case HelpRequestDtoStatus.finished:
        return 'Завершён';
      case HelpRequestDtoStatus.canceled:
        return 'Отменён';
      case HelpRequestDtoStatus.swaggerGeneratedUnknown:
        return 'Неизвестно';
    }
  }

  @override
  String getTypeString(HelpRequestDtoType type) {
    switch (type) {
      case HelpRequestDtoType.material:
        return 'Материальная помощь';
      case HelpRequestDtoType.medical:
        return 'Медицинская помощь';
      case HelpRequestDtoType.legal:
        return 'Юридическая помощь';
      case HelpRequestDtoType.info:
        return 'Информационная помощь';
      case HelpRequestDtoType.social:
        return 'Социальная помощь';
      case HelpRequestDtoType.logistic:
        return 'Логистическая помощь';
      case HelpRequestDtoType.mental:
        return 'Психологическая помощь';
      case HelpRequestDtoType.other:
        return 'Другое';
      case HelpRequestDtoType.swaggerGeneratedUnknown:
        return 'Неизвестный тип';
    }
  }
}
