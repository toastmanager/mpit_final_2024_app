// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:mpit_final_2024_app/empty_screen.dart' as _i4;
import 'package:mpit_final_2024_app/features/articles/presentation/screens/article_screen.dart'
    as _i1;
import 'package:mpit_final_2024_app/features/articles/presentation/screens/articles_list_screen.dart'
    as _i2;
import 'package:mpit_final_2024_app/features/auth/presentation/screens/profile_screen.dart'
    as _i8;
import 'package:mpit_final_2024_app/features/chatbot/presentation/screens/chatbot_screen.dart'
    as _i3;
import 'package:mpit_final_2024_app/features/help_requests/presentation/screens/help_request_screen.dart'
    as _i5;
import 'package:mpit_final_2024_app/features/help_requests/presentation/screens/help_requests_screen.dart'
    as _i6;
import 'package:mpit_final_2024_app/main_screen.dart' as _i7;

/// generated route for
/// [_i1.ArticleScreen]
class ArticleRoute extends _i9.PageRouteInfo<ArticleRouteArgs> {
  ArticleRoute({
    _i10.Key? key,
    required int articleId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ArticleRoute.name,
          args: ArticleRouteArgs(
            key: key,
            articleId: articleId,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleRoute';

  static _i9.PageInfo page = _i9.PageInfo(
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

  final _i10.Key? key;

  final int articleId;

  @override
  String toString() {
    return 'ArticleRouteArgs{key: $key, articleId: $articleId}';
  }
}

/// generated route for
/// [_i2.ArticlesListScreen]
class ArticlesListRoute extends _i9.PageRouteInfo<void> {
  const ArticlesListRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ArticlesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticlesListRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.ArticlesListScreen();
    },
  );
}

/// generated route for
/// [_i3.ChatbotScreen]
class ChatbotRoute extends _i9.PageRouteInfo<void> {
  const ChatbotRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ChatbotRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatbotRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChatbotScreen();
    },
  );
}

/// generated route for
/// [_i4.EmptyScreen]
class EmptyRoute extends _i9.PageRouteInfo<void> {
  const EmptyRoute({List<_i9.PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.EmptyScreen();
    },
  );
}

/// generated route for
/// [_i5.HelpRequestScreen]
class HelpRequestRoute extends _i9.PageRouteInfo<HelpRequestRouteArgs> {
  HelpRequestRoute({
    _i10.Key? key,
    required String uuid,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HelpRequestRoute.name,
          args: HelpRequestRouteArgs(
            key: key,
            uuid: uuid,
          ),
          initialChildren: children,
        );

  static const String name = 'HelpRequestRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HelpRequestRouteArgs>();
      return _i5.HelpRequestScreen(
        key: args.key,
        uuid: args.uuid,
      );
    },
  );
}

class HelpRequestRouteArgs {
  const HelpRequestRouteArgs({
    this.key,
    required this.uuid,
  });

  final _i10.Key? key;

  final String uuid;

  @override
  String toString() {
    return 'HelpRequestRouteArgs{key: $key, uuid: $uuid}';
  }
}

/// generated route for
/// [_i6.HelpRequestsScreen]
class HelpRequestsRoute extends _i9.PageRouteInfo<void> {
  const HelpRequestsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HelpRequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRequestsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.HelpRequestsScreen();
    },
  );
}

/// generated route for
/// [_i7.MainScreen]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.MainScreen();
    },
  );
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.ProfileScreen();
    },
  );
}
