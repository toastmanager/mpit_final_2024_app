import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';

abstract class HelpRequestsRepository {
  Future<List<HelpRequestDto>> findAll();
  Future<HelpRequestDto?> findOne(String uuid);
  String getStatusString(HelpRequestDtoStatus status);
  String getTypeString(HelpRequestDtoType type);
  Future<HelpRequestDto?> create(CreateHelpRequestDto createHelpRequestDto);
  Future<HelpRequestDto?> delete(String uuid);
}
