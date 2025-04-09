// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:mpit_final_2024_app/empty_screen.dart' as _i6;
import 'package:mpit_final_2024_app/features/articles/presentation/screens/article_screen.dart'
    as _i1;
import 'package:mpit_final_2024_app/features/articles/presentation/screens/articles_list_screen.dart'
    as _i2;
import 'package:mpit_final_2024_app/features/auth/presentation/screens/auth_screen.dart'
    as _i3;
import 'package:mpit_final_2024_app/features/auth/presentation/screens/code_verify_screen.dart'
    as _i5;
import 'package:mpit_final_2024_app/features/auth/presentation/screens/profile_screen.dart'
    as _i12;
import 'package:mpit_final_2024_app/features/chatbot/presentation/screens/chatbot_screen.dart'
    as _i4;
import 'package:mpit_final_2024_app/features/help_requests/presentation/screens/help_request_creation.dart'
    as _i8;
import 'package:mpit_final_2024_app/features/help_requests/presentation/screens/help_request_screen.dart'
    as _i9;
import 'package:mpit_final_2024_app/features/help_requests/presentation/screens/help_requests_screen.dart'
    as _i10;
import 'package:mpit_final_2024_app/features/main_screen/presentation/screens/home_screen.dart'
    as _i11;
import 'package:mpit_final_2024_app/global_screen.dart' as _i7;

/// generated route for
/// [_i1.ArticleScreen]
class ArticleRoute extends _i13.PageRouteInfo<ArticleRouteArgs> {
  ArticleRoute({
    _i14.Key? key,
    required int articleId,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ArticleRoute.name,
          args: ArticleRouteArgs(
            key: key,
            articleId: articleId,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleRoute';

  static _i13.PageInfo page = _i13.PageInfo(
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

  final _i14.Key? key;

  final int articleId;

  @override
  String toString() {
    return 'ArticleRouteArgs{key: $key, articleId: $articleId}';
  }
}

/// generated route for
/// [_i2.ArticlesListScreen]
class ArticlesListRoute extends _i13.PageRouteInfo<void> {
  const ArticlesListRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ArticlesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticlesListRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.ArticlesListScreen();
    },
  );
}

/// generated route for
/// [_i3.AuthScreen]
class AuthRoute extends _i13.PageRouteInfo<void> {
  const AuthRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.AuthScreen();
    },
  );
}

/// generated route for
/// [_i4.ChatbotScreen]
class ChatbotRoute extends _i13.PageRouteInfo<ChatbotRouteArgs> {
  ChatbotRoute({
    _i14.Key? key,
    String? initialQuery,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ChatbotRoute.name,
          args: ChatbotRouteArgs(
            key: key,
            initialQuery: initialQuery,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatbotRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<ChatbotRouteArgs>(orElse: () => const ChatbotRouteArgs());
      return _i4.ChatbotScreen(
        key: args.key,
        initialQuery: args.initialQuery,
      );
    },
  );
}

class ChatbotRouteArgs {
  const ChatbotRouteArgs({
    this.key,
    this.initialQuery,
  });

  final _i14.Key? key;

  final String? initialQuery;

  @override
  String toString() {
    return 'ChatbotRouteArgs{key: $key, initialQuery: $initialQuery}';
  }
}

/// generated route for
/// [_i5.CodeVerifyScreen]
class CodeVerifyRoute extends _i13.PageRouteInfo<CodeVerifyRouteArgs> {
  CodeVerifyRoute({
    _i14.Key? key,
    required String tel,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          CodeVerifyRoute.name,
          args: CodeVerifyRouteArgs(
            key: key,
            tel: tel,
          ),
          initialChildren: children,
        );

  static const String name = 'CodeVerifyRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CodeVerifyRouteArgs>();
      return _i5.CodeVerifyScreen(
        key: args.key,
        tel: args.tel,
      );
    },
  );
}

class CodeVerifyRouteArgs {
  const CodeVerifyRouteArgs({
    this.key,
    required this.tel,
  });

  final _i14.Key? key;

  final String tel;

  @override
  String toString() {
    return 'CodeVerifyRouteArgs{key: $key, tel: $tel}';
  }
}

/// generated route for
/// [_i6.EmptyScreen]
class EmptyRoute extends _i13.PageRouteInfo<void> {
  const EmptyRoute({List<_i13.PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.EmptyScreen();
    },
  );
}

/// generated route for
/// [_i7.GlobalScreen]
class GlobalRoute extends _i13.PageRouteInfo<void> {
  const GlobalRoute({List<_i13.PageRouteInfo>? children})
      : super(
          GlobalRoute.name,
          initialChildren: children,
        );

  static const String name = 'GlobalRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i7.GlobalScreen();
    },
  );
}

/// generated route for
/// [_i8.HelpRequestCreationScreen]
class HelpRequestCreationRoute extends _i13.PageRouteInfo<void> {
  const HelpRequestCreationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HelpRequestCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRequestCreationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.HelpRequestCreationScreen();
    },
  );
}

/// generated route for
/// [_i9.HelpRequestScreen]
class HelpRequestRoute extends _i13.PageRouteInfo<HelpRequestRouteArgs> {
  HelpRequestRoute({
    _i14.Key? key,
    required String uuid,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          HelpRequestRoute.name,
          args: HelpRequestRouteArgs(
            key: key,
            uuid: uuid,
          ),
          initialChildren: children,
        );

  static const String name = 'HelpRequestRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HelpRequestRouteArgs>();
      return _i9.HelpRequestScreen(
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

  final _i14.Key? key;

  final String uuid;

  @override
  String toString() {
    return 'HelpRequestRouteArgs{key: $key, uuid: $uuid}';
  }
}

/// generated route for
/// [_i10.HelpRequestsScreen]
class HelpRequestsRoute extends _i13.PageRouteInfo<void> {
  const HelpRequestsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HelpRequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRequestsRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.HelpRequestsScreen();
    },
  );
}

/// generated route for
/// [_i11.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.HomeScreen();
    },
  );
}

/// generated route for
/// [_i12.ProfileScreen]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i12.ProfileScreen();
    },
  );
}
