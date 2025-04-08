import 'package:freezed_annotation/freezed_annotation.dart';
part 'chatbot_message.freezed.dart';

@freezed
class ChatbotMessage with _$ChatbotMessage {
  const factory ChatbotMessage({
    required bool isUser,
    required String message,
  }) = _ChatbotMessage;
}
