import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mpit_final_2024_app/core/components/avatar.dart';
import 'package:mpit_final_2024_app/core/constants/icon_paths.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.article});

  final ArticleDto article;

  @override
  Widget build(BuildContext context) {
    const readRate = 238;
    final fonts = TextTheme.of(context);
    final colors = ColorScheme.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: IntrinsicHeight(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          color: colors.surfaceContainer,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CachedNetworkImage(
                    imageUrl: article.bannerUrl ?? '',
                    errorWidget: (context, url, error) => Placeholder(),
                    height: 206,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 6, bottom: 8),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withAlpha(128),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                IconPaths.bookOpen,
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${article.text.length ~/ readRate} минут',
                                style: fonts.bodySmall?.copyWith(
                                  color: Colors.white,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Avatar(
                          avatarUrl: article.author.avatarUrl,
                          size: 30,
                          isBordered: false,
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              article.author.username ?? 'Анонимный автор',
                              style: fonts.bodySmall?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  IconPaths.eyeLine,
                                  height: 12,
                                  width: 12,
                                  color: colors.onSurfaceVariant,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '52 ⋅ 3 месяца назад',
                                  style: fonts.bodySmall?.copyWith(
                                    color: colors.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      article.title,
                      style: fonts.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      article.text,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
