import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:mpit_final_2024_app/core/components/avatar.dart';
import 'package:mpit_final_2024_app/core/constants/icon_paths.dart';
import 'package:mpit_final_2024_app/core/routes/router.dart';
import 'package:mpit_final_2024_app/features/articles/domain/repositories/articles_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class ArticleScreen extends StatelessWidget {
  ArticleScreen({super.key, required this.articleId});
  final int articleId;
  final tocController = TocController();

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<ArticleDto>(
          future: sl<ArticlesRepository>().getArticle(id: articleId),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              final article = snapshot.data!;

              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CachedNetworkImage(
                              imageUrl: article.bannerUrl ?? '',
                              errorWidget:
                                  (context, url, error) => Placeholder(),
                              height:
                                  (MediaQuery.of(context).size.height / 4) * 3,
                            ),
                            Container(
                              height:
                                  (MediaQuery.of(context).size.height / 4) * 3,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black,
                                    Colors.black.withAlpha(0),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 30,
                                left: 16,
                              ),
                              child: Text(
                                article.title,
                                style: GoogleFonts.geologicaTextTheme()
                                    .bodyLarge
                                    ?.copyWith(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Divider(),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Содержание',
                            style: GoogleFonts.geologicaTextTheme().bodyLarge
                                ?.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          child: TocWidget(controller: tocController),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: MarkdownWidget(
                            shrinkWrap: true,
                            data: article.text,
                            tocController: tocController,
                            physics: NeverScrollableScrollPhysics(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 21,
                      vertical: 24,
                    ),
                    child: Row(
                      children: [
                        ClipOval(
                          child: InkWell(
                            onTap: () {
                              sl<AppRouter>().maybePop();
                            },
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withAlpha(128),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(31),
                            topLeft: Radius.circular(31),
                            bottomRight: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 48,
                              width:
                                  MediaQuery.of(context).size.width -
                                  48 -
                                  21 -
                                  21 -
                                  24,
                              decoration: BoxDecoration(
                                color: Colors.grey.withAlpha(128),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 4,
                                  top: 4,
                                  bottom: 4,
                                  right: 12,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 40,
                                          child: Avatar(
                                            isBordered: false,
                                            size: 40,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              article.author.username ??
                                                  'Анонимный автор',
                                              style: fonts.bodySmall?.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            Text(
                                              article.author.username ??
                                                  '13 подписчиков',
                                              style: fonts.bodySmall?.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        height: 32,
                                        width: 32,
                                        IconPaths.bookmarkPlusLine,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
