import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';

abstract class ArticlesRepository {
  Future<ArticleDto> getArticle({required int id});
  Future<List<ArticleDto>> getArticles();
}
