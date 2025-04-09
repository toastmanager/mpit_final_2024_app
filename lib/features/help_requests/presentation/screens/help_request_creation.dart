import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mpit_final_2024_app/core/components/expanded_horizontally.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/repositories/help_requests_repository.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.enums.swagger.dart';
import 'package:mpit_final_2024_app/generated_code/rest_api.models.swagger.dart';
import 'package:mpit_final_2024_app/injection.dart';

@RoutePage()
class HelpRequestCreationScreen extends StatelessWidget {
  const HelpRequestCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    final colors = ColorScheme.of(context);
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Создание заявки',
          style: fonts.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FormBuilder(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'title',
                    decoration: InputDecoration(
                      label: Text('Заголовок'),
                      labelStyle: fonts.bodyMedium?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 12),
                  FormBuilderDropdown(
                    name: 'type',
                    initialValue: HelpRequestDtoType.info.value,
                    items:
                        HelpRequestDtoType.values
                            .where(
                              (e) =>
                                  e !=
                                  HelpRequestDtoType.swaggerGeneratedUnknown,
                            )
                            .map(
                              (e) => DropdownMenuItem(
                                value: e.value,
                                child: Text(
                                  sl<HelpRequestsRepository>().getTypeString(e),
                                ),
                              ),
                            )
                            .toList(),
                    decoration: InputDecoration(
                      label: Text('Выберите направление'),
                      labelStyle: fonts.bodyMedium?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 12),
                  FormBuilderTextField(
                    name: 'text',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      label: Text('Опишите ситуацию'),
                      labelStyle: fonts.bodyMedium?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 12),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ExpandedHorizontally(
                        child: FilledButton(
                          onPressed: () async {
                            if (formKey.currentState?.saveAndValidate() ??
                                true) {
                              final form = formKey.currentState!.value;
                              context.maybePop();
                              await sl<HelpRequestsRepository>().create(
                                CreateHelpRequestDto.fromJson(form),
                              );
                            }
                          },
                          child: Text('Создать заявку'),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
