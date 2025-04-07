// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:mpit_final_2024_app/features/articles/presentation/screens/article_screen.dart'
    as _i1;
import 'package:mpit_final_2024_app/features/auth/presentation/screens/profile_screen.dart'
    as _i5;
import 'package:mpit_final_2024_app/features/chatbot/presentation/screens/chatbot_screen.dart'
    as _i2;
import 'package:mpit_final_2024_app/features/hepl_requests/presentation/screens/help_requests_screen.dart'
    as _i3;
import 'package:mpit_final_2024_app/features/references/presentation/screens/references_screen.dart'
    as _i6;
import 'package:mpit_final_2024_app/features/vacancies/presentation/screens/vacancies_screen.dart'
    as _i7;
import 'package:mpit_final_2024_app/main_screen.dart' as _i4;

/// generated route for
/// [_i1.ArticleScreen]
class ArticleRoute extends _i8.PageRouteInfo<ArticleRouteArgs> {
  ArticleRoute({
    _i9.Key? key,
    required int articleId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ArticleRoute.name,
          args: ArticleRouteArgs(
            key: key,
            articleId: articleId,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticleRouteArgs>();
      return _i1.ArticleScreen(
        key: args.key,
        articleId: args.articleId,
      );
    },
  );
}

class ArticleRouteArgs {
  const ArticleRouteArgs({
    this.key,
    required this.articleId,
  });

  final _i9.Key? key;

  final int articleId;

  @override
  String toString() {
    return 'ArticleRouteArgs{key: $key, articleId: $articleId}';
  }
}

/// generated route for
/// [_i2.ChatbotScreen]
class ChatbotRoute extends _i8.PageRouteInfo<void> {
  const ChatbotRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ChatbotRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatbotRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatbotScreen();
    },
  );
}

/// generated route for
/// [_i3.HelpRequestsScreen]
class HelpRequestsRoute extends _i8.PageRouteInfo<void> {
  const HelpRequestsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HelpRequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRequestsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.HelpRequestsScreen();
    },
  );
}

/// generated route for
/// [_i4.MainScreen]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainScreen();
    },
  );
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i6.ReferencesScreen]
class ReferencesRoute extends _i8.PageRouteInfo<void> {
  const ReferencesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ReferencesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReferencesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.ReferencesScreen();
    },
  );
}

/// generated route for
/// [_i7.VacanciesScreen]
class VacanciesRoute extends _i8.PageRouteInfo<void> {
  const VacanciesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          VacanciesRoute.name,
          initialChildren: children,
        );

  static const String name = 'VacanciesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.VacanciesScreen();
    },
  );
}
