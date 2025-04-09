import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpit_final_2024_app/core/constants/constants.dart';
import 'package:mpit_final_2024_app/core/constants/icon_paths.dart';
import 'package:mpit_final_2024_app/core/utils/app_date_utils.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';

class ArticleCardHorizontal extends StatelessWidget {
  const ArticleCardHorizontal({super.key, required this.article});

  final ArticleDto article;

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    final colors = ColorScheme.of(context);
    return SizedBox(
      width: 283,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CachedNetworkImage(
                  imageUrl: article.bannerUrl ?? '',
                  errorWidget: (context, url, error) => Placeholder(),
                  height: 159,
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
                              '${article.text.trim().split(' ').length ~/ Constants.wordsReadRate} минут',
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
          ),
          const SizedBox(height: 8),
          Flexible(
            child: Text(
              article.title,
              style: fonts.bodyMedium?.copyWith(fontWeight: FontWeight.w800),
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
                '${article.views} ⋅ ${AppDateUtils().timeAgo(article.createdAt)}',
                style: fonts.bodySmall?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
