import 'package:injectable/injectable.dart';
import 'package:mpit_final_2024_app/features/chatbot/domain/enitites/chatbot_message.dart';
import 'package:mpit_final_2024_app/features/chatbot/domain/repositories/chatbot_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.swagger.dart';

@Injectable(as: ChatbotRepository)
class ChatbotRepositoryImpl implements ChatbotRepository {
  const ChatbotRepositoryImpl({required this.restApi});

  final RestApi restApi;

  @override
  Future<String> ask(String message, List<ChatbotMessage> history) async {
    final request = await restApi.v1ArticlesChatbotQueryGet(
      query: message,
      body: AskArticlesChatbotDto(history: history.toString()),
    );
    final answer = request.body ?? '';
    return answer;
  }
}
