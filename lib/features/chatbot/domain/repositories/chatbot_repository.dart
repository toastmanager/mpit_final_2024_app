import 'package:mpit_final_2024_app/features/chatbot/domain/enitites/chatbot_message.dart';

abstract class ChatbotRepository {
  Future<String> ask(String message, List<ChatbotMessage> history);
}
