import 'package:injectable/injectable.dart';
import 'package:mpit_final_2024_app/features/articles/domain/repositories/articles_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';

@Injectable(as: ArticlesRepository)
class ArticlesRepositoryImpl implements ArticlesRepository {
  const ArticlesRepositoryImpl({required this.restApi});

  final RestApi restApi;

  @override
  Future<ArticleDto?> getArticle({required int id}) async {
    final response = await restApi.v1ArticlesIdGet(id: id.toString());
    final article = response.body;
    return article;
  }

  @override
  Future<List<ArticleDto>> getArticles() async {
    final response = await restApi.v1ArticlesGet();
    final articles = response.body ?? [];
    return articles;
  }
}
