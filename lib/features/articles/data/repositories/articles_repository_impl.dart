import 'package:injectable/injectable.dart';
import 'package:mpit_final_2024_app/features/articles/domain/repositories/articles_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';

@Injectable(as: ArticlesRepository)
class ArticlesRepositoryImpl implements ArticlesRepository {
  @override
  Future<ArticleDto> getArticle({required int id}) async {
    return ArticleDto(
      id: 0,
      slug: 'slug',
      title: 'Заголовок о чём-то',
      text:
          '# Заголовок\nС 1 января 2025 года участники СВО смогут рассчитывать на увеличение ежемесячных денежных выплат. Размеры пособий будут пересчитаны с учетом инфляции и увеличения стоимости жизни. Также предусмотрены дополнительные выплаты для семей военнослужащих, которые погибли в ходе выполнения служебных обязанностей.\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\nLorem Ipsum\n# Заголовок\n## Заголовок 2\n### Заголовок 3\n# Заголовок\n# Заголовок\n# Заголовок\n# Заголовок',
      author: UserDto(
        id: 0,
        createdAt: DateTime(2025, 1, 4),
        updatedAt: DateTime(2025, 1, 4),
      ),
      createdAt: DateTime(2025, 1, 4),
      updatedAt: DateTime(2025, 1, 4),
    );
  }

  @override
  Future<List<ArticleDto>> getArticles() {
    // TODO: implement getArticles
    throw UnimplementedError();
  }
}
