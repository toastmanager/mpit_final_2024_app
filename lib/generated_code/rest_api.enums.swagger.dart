import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum UserSensitiveDtoRoles {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MODERATOR')
  moderator('MODERATOR'),
  @JsonValue('SOLDIER')
  soldier('SOLDIER'),
  @JsonValue('FAMILY_MEMBER')
  familyMember('FAMILY_MEMBER'),
  @JsonValue('MIGRANT')
  migrant('MIGRANT'),
  @JsonValue('VOLUNTEER')
  volunteer('VOLUNTEER');

  final String? value;

  const UserSensitiveDtoRoles(this.value);
}

enum CreateHelpRequestDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MATERIAL')
  material('MATERIAL'),
  @JsonValue('MEDICAL')
  medical('MEDICAL'),
  @JsonValue('LEGAL')
  legal('LEGAL'),
  @JsonValue('INFO')
  info('INFO'),
  @JsonValue('SOCIAL')
  social('SOCIAL'),
  @JsonValue('LOGISTIC')
  logistic('LOGISTIC'),
  @JsonValue('MENTAL')
  mental('MENTAL'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const CreateHelpRequestDtoType(this.value);
}

enum HelpRequestDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MATERIAL')
  material('MATERIAL'),
  @JsonValue('MEDICAL')
  medical('MEDICAL'),
  @JsonValue('LEGAL')
  legal('LEGAL'),
  @JsonValue('INFO')
  info('INFO'),
  @JsonValue('SOCIAL')
  social('SOCIAL'),
  @JsonValue('LOGISTIC')
  logistic('LOGISTIC'),
  @JsonValue('MENTAL')
  mental('MENTAL'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const HelpRequestDtoType(this.value);
}

enum HelpRequestDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CREATED')
  created('CREATED'),
  @JsonValue('VOLUNTEER_FOUND')
  volunteerFound('VOLUNTEER_FOUND'),
  @JsonValue('FINISHED')
  finished('FINISHED'),
  @JsonValue('CANCELED')
  canceled('CANCELED');

  final String? value;

  const HelpRequestDtoStatus(this.value);
}

enum UpdateHelpRequestDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MATERIAL')
  material('MATERIAL'),
  @JsonValue('MEDICAL')
  medical('MEDICAL'),
  @JsonValue('LEGAL')
  legal('LEGAL'),
  @JsonValue('INFO')
  info('INFO'),
  @JsonValue('SOCIAL')
  social('SOCIAL'),
  @JsonValue('LOGISTIC')
  logistic('LOGISTIC'),
  @JsonValue('MENTAL')
  mental('MENTAL'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const UpdateHelpRequestDtoType(this.value);
}

enum UpdateHelpRequetStatusDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CREATED')
  created('CREATED'),
  @JsonValue('VOLUNTEER_FOUND')
  volunteerFound('VOLUNTEER_FOUND'),
  @JsonValue('FINISHED')
  finished('FINISHED'),
  @JsonValue('CANCELED')
  canceled('CANCELED');

  final String? value;

  const UpdateHelpRequetStatusDtoStatus(this.value);
}

enum CreateReferenceDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SHELTER')
  shelter('SHELTER'),
  @JsonValue('CHARITY')
  charity('CHARITY'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const CreateReferenceDtoType(this.value);
}

enum ReferenceDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SHELTER')
  shelter('SHELTER'),
  @JsonValue('CHARITY')
  charity('CHARITY'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const ReferenceDtoType(this.value);
}

enum UpdateReferenceDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SHELTER')
  shelter('SHELTER'),
  @JsonValue('CHARITY')
  charity('CHARITY'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const UpdateReferenceDtoType(this.value);
}
