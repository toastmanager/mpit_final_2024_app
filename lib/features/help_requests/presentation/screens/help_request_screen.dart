import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mpit_final_2024_app/core/components/avatar.dart';
import 'package:mpit_final_2024_app/core/components/toast.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/cubit/help_requests_list_cubit.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/repositories/help_requests_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';
import 'package:mpit_final_2024_app/injection.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class HelpRequestScreen extends StatelessWidget {
  const HelpRequestScreen({super.key, required this.uuid});

  final String uuid;

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ваша заявка',
          style: fonts.bodySmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              await sl<HelpRequestsRepository>().delete(uuid);
              context.read<HelpRequestsListCubit>().findAll();
              context.maybePop();
            },
            child: Text('Удалить'),
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<HelpRequestDto?>(
          future: sl<HelpRequestsRepository>().findOne(uuid),
          builder: (context, snapshot) {
            if ([
              ConnectionState.active,
              ConnectionState.waiting,
            ].contains(snapshot.connectionState)) {
              return CircularProgressIndicator();
            }

            if (snapshot.hasData) {
              final request = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            request.title,
                            style: GoogleFonts.geologicaTextTheme().bodyLarge
                                ?.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            sl<HelpRequestsRepository>().getTypeString(
                              request.type,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Toast(
                                title: 'Состояние',
                                body: sl<HelpRequestsRepository>()
                                    .getStatusString(request.status),
                              ),
                              const SizedBox(width: 8),
                              Toast(
                                title: 'Дата',
                                body: DateFormat()
                                    .addPattern('H MMMM y')
                                    .format(request.createdAt),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Divider(),
                    const SizedBox(height: 10),
                    if (request.volunteerTg != null) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Avatar(size: 41),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Напишите волонтёру в телеграм'),
                                    Text('@${request.volunteerTg}'),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            FilledButton(
                              onPressed: () async {
                                await launchUrl(
                                  Uri.parse(
                                    'https://t.me/${request.volunteerTg}',
                                  ),
                                );
                              },
                              child: Text('Написать в телеграм'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(),
                      const SizedBox(height: 10),
                    ],
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(request.text),
                    ),
                  ],
                ),
              );
            }
            return Text('Заявка не найдена');
          },
        ),
      ),
    );
  }
}
