// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:mpit_final_2024_app/empty_screen.dart' as _i4;
import 'package:mpit_final_2024_app/features/articles/presentation/screens/article_screen.dart'
    as _i1;
import 'package:mpit_final_2024_app/features/articles/presentation/screens/articles_list_screen.dart'
    as _i2;
import 'package:mpit_final_2024_app/features/auth/presentation/screens/profile_screen.dart'
    as _i7;
import 'package:mpit_final_2024_app/features/chatbot/presentation/screens/chatbot_screen.dart'
    as _i3;
import 'package:mpit_final_2024_app/features/hepl_requests/presentation/screens/help_requests_screen.dart'
    as _i5;
import 'package:mpit_final_2024_app/main_screen.dart' as _i6;

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
/// [_i2.ArticlesListScreen]
class ArticlesListRoute extends _i8.PageRouteInfo<void> {
  const ArticlesListRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ArticlesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticlesListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ArticlesListScreen();
    },
  );
}

/// generated route for
/// [_i3.ChatbotScreen]
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
      return const _i3.ChatbotScreen();
    },
  );
}

/// generated route for
/// [_i4.EmptyScreen]
class EmptyRoute extends _i8.PageRouteInfo<void> {
  const EmptyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.EmptyScreen();
    },
  );
}

/// generated route for
/// [_i5.HelpRequestsScreen]
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
      return const _i5.HelpRequestsScreen();
    },
  );
}

/// generated route for
/// [_i6.MainScreen]
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
      return const _i6.MainScreen();
    },
  );
}

/// generated route for
/// [_i7.ProfileScreen]
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
      return const _i7.ProfileScreen();
    },
  );
}
