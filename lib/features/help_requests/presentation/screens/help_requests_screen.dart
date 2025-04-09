import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpit_final_2024_app/core/components/avatar.dart';
import 'package:mpit_final_2024_app/core/components/external_tab_button.dart';
import 'package:mpit_final_2024_app/core/constants/icon_paths.dart';
import 'package:mpit_final_2024_app/core/routes/router.dart';
import 'package:mpit_final_2024_app/core/routes/router.gr.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/cubit/help_requests_list_cubit.dart';
import 'package:mpit_final_2024_app/features/help_requests/presentation/widgets/help_request_card.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class HelpRequestsScreen extends StatefulWidget {
  const HelpRequestsScreen({super.key});

  @override
  State<HelpRequestsScreen> createState() => _HelpRequestsScreenState();
}

class _HelpRequestsScreenState extends State<HelpRequestsScreen> {
  final List<Widget> pages = [
    StatefulBuilder(
      builder: (context, setArticlesState) {
        final colors = ColorScheme.of(context);
        final fonts = TextTheme.of(context);

        return BlocBuilder<HelpRequestsListCubit, HelpRequestsListState>(
          builder: (context, state) {
            final helpRequests = state.when(
              initial: (helpRequests) => helpRequests,
            );

            if (helpRequests.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'У вас нет активных заявок',
                    style: fonts.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Не стесняйтесь, мы\nтолько рады вам помочь',
                    textAlign: TextAlign.center,
                    style: fonts.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ],
              );
            }

            return RefreshIndicator(
              onRefresh: () async => setArticlesState(() {}),
              child: ListView.separated(
                itemBuilder:
                    (context, index) => InkWell(
                      onTap: () {
                        sl<AppRouter>().push(
                          HelpRequestRoute(uuid: helpRequests[index].uuid),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HelpRequestCard(helpRequest: helpRequests[index]),
                          Divider(),
                        ],
                      ),
                    ),
                separatorBuilder:
                    (context, index) => const SizedBox(height: 16),
                itemCount: helpRequests.length,
              ),
            );
          },
        );
      },
    ),
    BlocBuilder<HelpRequestsListCubit, HelpRequestsListState>(
      builder: (context, state) {
        final fonts = TextTheme.of(context);
        final colors = ColorScheme.of(context);

        final helpRequests = [];
        if (helpRequests.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ваша история заявок пустая',
                style: fonts.bodyMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 12),
              Text(
                'Сюда рано или поздно придут все заявки',
                textAlign: TextAlign.center,
                style: fonts.bodyMedium?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
            ],
          );
        }

        return RefreshIndicator(
          onRefresh:
              () async => context.read<HelpRequestsListCubit>().findAll(),
          child: ListView.separated(
            itemBuilder:
                (context, index) => InkWell(
                  onTap: () {
                    sl<AppRouter>().push(
                      HelpRequestRoute(uuid: helpRequests[index].uuid),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HelpRequestCard(helpRequest: helpRequests[index]),
                      Divider(),
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: helpRequests.length,
          ),
        );
      },
    ),
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    final colors = ColorScheme.of(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Avatar(size: 36),
                  const SizedBox(width: 12),
                  Text(
                    'Заявки',
                    style: GoogleFonts.geologica().copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          TabButton(
                            pageIndex: 0,
                            currentIndex: pageIndex,
                            text: 'Активные',
                            onTap: () => setState(() => pageIndex = 0),
                          ),
                          const SizedBox(width: 8),
                          TabButton(
                            pageIndex: 1,
                            currentIndex: pageIndex,
                            text: 'История',
                            onTap: () => setState(() => pageIndex = 1),
                          ),
                        ],
                      ),
                      const Spacer(),
                      FilledButton(
                        onPressed: () {
                          context.pushRoute(HelpRequestCreationRoute());
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            colors.surfaceContainer,
                          ),
                          foregroundColor: WidgetStatePropertyAll(
                            colors.onSurface,
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              IconPaths.filePlusLine,
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Создать',
                              style: fonts.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        const Divider(),
        const SizedBox(height: 4),
        Expanded(child: pages[pageIndex]),
      ],
    );
  }
}
