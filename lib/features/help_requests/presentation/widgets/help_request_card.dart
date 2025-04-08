import 'package:flutter/material.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/repositories/help_requests_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';
import 'package:mpit_final_2024_app/injection.dart';

class HelpRequestCard extends StatelessWidget {
  const HelpRequestCard({super.key, required this.helpRequest});

  final HelpRequestDto helpRequest;

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    final colors = ColorScheme.of(context);
    final status = helpRequest.status;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            helpRequest.title,
            style: fonts.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            sl<HelpRequestsRepository>().getTypeString(helpRequest.type),
            maxLines: 4,
            style: fonts.bodySmall?.copyWith(
              color: colors.onSurfaceVariant,
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 8),
          Text(helpRequest.text, maxLines: 4, style: fonts.bodySmall),
          const SizedBox(height: 12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color:
                  status != HelpRequestDtoStatus.volunteerFound
                      ? colors.surfaceContainer
                      : null,
              border:
                  status == HelpRequestDtoStatus.volunteerFound
                      ? Border.all(color: colors.primary)
                      : null,
            ),
            child: Text(
              status == HelpRequestDtoStatus.volunteerFound
                  ? 'Принято, свяжитесь'
                  : status == HelpRequestDtoStatus.canceled
                  ? 'Отказано'
                  : status == HelpRequestDtoStatus.finished
                  ? 'Завершено'
                  : 'На рассмотрении',
              style: fonts.bodySmall?.copyWith(
                color:
                    status == HelpRequestDtoStatus.volunteerFound
                        ? colors.primary
                        : colors.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
