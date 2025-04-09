import 'package:mpit_final_2024_app/core/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: GlobalRoute.page,
      initial: true,
      children: [
        AutoRoute(path: '', page: HomeRoute.page),
        AutoRoute(path: 'help-requests', page: HelpRequestsRoute.page),
        AutoRoute(path: 'articles-list', page: ArticlesListRoute.page),
        AutoRoute(path: '_', page: EmptyRoute.page),
      ],
    ),
    AutoRoute(path: '/chatbot', page: ChatbotRoute.page),
    AutoRoute(path: '/help-request/:uuid', page: HelpRequestRoute.page),
    AutoRoute(
      path: '/help-request/create',
      page: HelpRequestCreationRoute.page,
    ),
    AutoRoute(path: '/auth', page: AuthRoute.page),
    AutoRoute(path: '/auth/verify', page: CodeVerifyRoute.page),
    AutoRoute(path: '/articles/:articleId', page: ArticleRoute.page),
  ];
}
