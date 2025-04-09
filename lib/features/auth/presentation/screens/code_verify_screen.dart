import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mpit_final_2024_app/features/auth/data/utils/auth_token_service.dart';
import 'package:mpit_final_2024_app/features/auth/domain/cubit/auth_cubit.dart';
import 'package:mpit_final_2024_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class CodeVerifyScreen extends StatelessWidget {
  const CodeVerifyScreen({super.key, required this.tel});

  final String tel;

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    final codeController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Введите код из\nотправленного сообщения\nна номер $tel',
                  textAlign: TextAlign.center,
                  style: fonts.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: codeController,
                  inputFormatters: [
                    MaskTextInputFormatter(
                      mask: '#####',
                      filter: {'#': RegExp(r'[0-9]')},
                      type: MaskAutoCompletionType.lazy,
                    ),
                  ],
                ),
              ],
            ),
            FilledButton(
              onPressed: () async {
                await sl<AuthRepository>().verifyCode(tel, codeController.text);
                context.read<AuthCubit>().intialLoadMe();
                context.maybePop();
              },
              child: Text('Далее'),
            ),
          ],
        ),
      ),
    );
  }
}
