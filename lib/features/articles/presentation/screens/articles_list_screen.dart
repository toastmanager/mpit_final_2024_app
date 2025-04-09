import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpit_final_2024_app/core/components/avatar.dart';
import 'package:mpit_final_2024_app/core/components/external_tab_button.dart';
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
            if ([
              ConnectionState.active,
              ConnectionState.waiting,
            ].contains(snapshot.connectionState)) {
              return Center(child: CircularProgressIndicator());
            }

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    TabButton(
                      pageIndex: 0,
                      currentIndex: pageIndex,
                      text: 'Новые',
                      onTap: () => setState(() => pageIndex = 0),
                    ),
                    // const SizedBox(width: 8),
                    // TabButton(
                    //   pageIndex: 1,
                    //   currentIndex: pageIndex,
                    //   text: 'Подписки',
                    //   onTap: () => setState(() => pageIndex = 1),
                    // ),
                    // const SizedBox(width: 8),
                    // TabButton(
                    //   pageIndex: 2,
                    //   currentIndex: pageIndex,
                    //   text: 'Избранное',
                    //   onTap: () => setState(() => pageIndex = 2),
                    // ),
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
