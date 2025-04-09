import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mpit_final_2024_app/core/routes/router.gr.dart';
import 'package:mpit_final_2024_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final telController = TextEditingController();
    final telFormatter = MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Введите номер,\nчтобы продолжить',
                          textAlign: TextAlign.center,
                        ),
                        TextField(
                          controller: telController,
                          inputFormatters: [telFormatter],
                        ),
                      ],
                    ),
                    FilledButton(
                      onPressed: () async {
                        context.pushRoute(
                          CodeVerifyRoute(
                            tel: '+${telFormatter.getUnmaskedText()}',
                          ),
                        );
                        await sl<AuthRepository>().requestCode(
                          '+${telFormatter.getUnmaskedText()}',
                        );
                      },
                      child: Text('Далее'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
