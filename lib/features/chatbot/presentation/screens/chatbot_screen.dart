import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:markdown_widget/widget/all.dart';
import 'package:mpit_final_2024_app/core/constants/icon_paths.dart';
import 'package:mpit_final_2024_app/features/chatbot/domain/enitites/chatbot_message.dart';
import 'package:mpit_final_2024_app/features/chatbot/domain/repositories/chatbot_repository.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final List<ChatbotMessage> messages = [
    ChatbotMessage(isUser: false, message: 'Здравствуйте! Чем могу помочь?'),
  ];

  bool isAvailable = true;
  final messageController = TextEditingController();

  void sendUserMessage() async {
    final message = messageController.text;
    if (!isAvailable || message.isEmpty) {
      return;
    }
    setState(() {
      messages.add(ChatbotMessage(isUser: true, message: message));
      messageController.text = '';
      isAvailable = false;
    });
    final answer = await sl<ChatbotRepository>().ask(message, messages);
    messages.add(ChatbotMessage(isUser: false, message: answer));
    setState(() {
      isAvailable = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    final fonts = TextTheme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Column(
          children: [
            Text(
              'Мостовщик ИИ',
              style: fonts.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              'ваш персональный помощник',
              style: fonts.bodySmall?.copyWith(color: colors.onSurfaceVariant),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset(IconPaths.chatbotAvatar),
          ),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                shrinkWrap: true,
                itemBuilder:
                    (context, index) => Padding(
                      padding: EdgeInsets.only(
                        left: messages[index].isUser ? 46 : 15,
                        right: messages[index].isUser ? 15 : 46,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color:
                              messages[index].isUser
                                  ? colors.primary
                                  : colors.surfaceContainer,
                          borderRadius: BorderRadius.only(
                            bottomLeft:
                                messages[index].isUser
                                    ? Radius.circular(18)
                                    : Radius.circular(4),
                            bottomRight:
                                messages[index].isUser
                                    ? Radius.circular(4)
                                    : Radius.circular(18),
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                        ),
                        child:
                            messages[index].isUser
                                ? Text(
                                  messages[index].message,
                                  style: fonts.bodyMedium?.copyWith(
                                    color:
                                        messages[index].isUser
                                            ? colors.onPrimary
                                            : colors.onSurface,
                                  ),
                                )
                                : MarkdownBlock(data: messages[index].message),
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: messages.length,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Theme.of(context).dividerColor),
                ),
                color: colors.surfaceContainer,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      enabled: isAvailable,
                      controller: messageController,
                      keyboardType: TextInputType.multiline,
                      onSubmitted: (value) => sendUserMessage(),
                      maxLines: null,
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () => sendUserMessage(),
                    icon: Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
