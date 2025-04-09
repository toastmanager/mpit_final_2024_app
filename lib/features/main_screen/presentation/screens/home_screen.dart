import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mpit_final_2024_app/core/routes/router.dart';
import 'package:mpit_final_2024_app/core/routes/router.gr.dart';
import 'package:mpit_final_2024_app/features/articles/domain/repositories/articles_repository.dart';
import 'package:mpit_final_2024_app/features/articles/presentation/widgets/article_card_horizontal.dart';
import 'package:mpit_final_2024_app/features/main_screen/presentation/widgets/chatbot_hero.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    final colors = ColorScheme.of(context);
    final searchContoller = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Найти с Мостовщик ИИ',
                    hintStyle: fonts.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 8,
                    ),
                  ),
                  controller: searchContoller,
                  onSubmitted: (value) {
                    sl<AppRouter>().push(
                      ChatbotRoute(initialQuery: searchContoller.text),
                    );
                    searchContoller.text = '';
                  },
                  style: fonts.bodyMedium?.copyWith(),
                ),
                const SizedBox(height: 24),
                ChatbotHero(),
              ],
            ),
          ),
          const SizedBox(height: 24),
          FutureBuilder(
            future: sl<ArticlesRepository>().getArticles(),
            builder: (context, snapshot) {
              final articles = snapshot.data ?? [];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Новые статьи',
                          style: fonts.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            AutoTabsRouter.of(context).setActiveIndex(2);
                          },
                          icon: Icon(
                            Icons.chevron_right,
                            color: colors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 300),
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:
                          (context, index) => InkWell(
                            onTap: () {
                              context.pushRoute(
                                ArticleRoute(
                                  articleId: articles[index].id.toInt(),
                                ),
                              );
                            },
                            child: ArticleCardHorizontal(
                              article: articles[index],
                            ),
                          ),
                      separatorBuilder:
                          (context, index) => const SizedBox(width: 8),
                      itemCount: articles.length,
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
