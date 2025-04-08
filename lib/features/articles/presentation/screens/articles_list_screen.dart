import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpit_final_2024_app/core/components/avatar.dart';
import 'package:mpit_final_2024_app/core/routes/router.dart';
import 'package:mpit_final_2024_app/core/routes/router.gr.dart';
import 'package:mpit_final_2024_app/features/articles/domain/repositories/articles_repository.dart';
import 'package:mpit_final_2024_app/features/articles/presentation/widgets/article_card.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class ArticlesListScreen extends StatefulWidget {
  const ArticlesListScreen({super.key});

  @override
  State<ArticlesListScreen> createState() => _ArticlesListScreenState();
}

class _ArticlesListScreenState extends State<ArticlesListScreen> {
  final pages = [
    StatefulBuilder(
      builder: (context, setArticlesState) {
        return FutureBuilder<List<ArticleDto>>(
          future: sl<ArticlesRepository>().getArticles(),
          builder: (context, snapshot) {
            final articles = snapshot.data ?? [];
            return RefreshIndicator(
              onRefresh: () async => setArticlesState(() {}),
              child: ListView.separated(
                itemBuilder:
                    (context, index) => InkWell(
                      onTap: () {
                        sl<AppRouter>().push(
                          ArticleRoute(articleId: articles[index].id.toInt()),
                        );
                      },
                      child: ArticleCard(article: articles[index]),
                    ),
                separatorBuilder:
                    (context, index) => const SizedBox(height: 16),
                itemCount: articles.length,
              ),
            );
          },
        );
      },
    ),
    Placeholder(),
    Placeholder(),
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Avatar(size: 36),
                  const SizedBox(width: 12),
                  Text(
                    'Статьи',
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
                child: Row(
                  children: [
                    ReferencesTabButton(
                      pageIndex: 0,
                      currentIndex: pageIndex,
                      text: 'Новые',
                      onTap: () => setState(() => pageIndex = 0),
                    ),
                    const SizedBox(width: 8),
                    ReferencesTabButton(
                      pageIndex: 2,
                      currentIndex: pageIndex,
                      text: 'Подписки',
                      onTap: () => setState(() => pageIndex = 2),
                    ),
                    const SizedBox(width: 8),
                    ReferencesTabButton(
                      pageIndex: 3,
                      currentIndex: pageIndex,
                      text: 'Избранное',
                      onTap: () => setState(() => pageIndex = 3),
                    ),
                  ],
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

class ReferencesTabButton extends StatelessWidget {
  const ReferencesTabButton({
    super.key,
    required this.pageIndex,
    this.onTap,
    required this.currentIndex,
    required this.text,
  });

  final int pageIndex;
  final int currentIndex;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    final fonts = TextTheme.of(context);
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          pageIndex == currentIndex ? colors.primary : colors.surfaceContainer,
        ),
        foregroundColor: WidgetStatePropertyAll(
          pageIndex == currentIndex ? colors.onPrimary : colors.onSurface,
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
      ),
      child: Text(
        text,
        style: fonts.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          color:
              pageIndex == currentIndex ? colors.onPrimary : colors.onSurface,
        ),
      ),
    );
  }
}
