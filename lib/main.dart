import 'package:mpit_final_2024_app/core/routes/router.dart';
import 'package:mpit_final_2024_app/features/auth/domain/cubit/auth_cubit.dart';
import 'package:mpit_final_2024_app/features/help_requests/domain/cubit/help_requests_list_cubit.dart';
import 'package:mpit_final_2024_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

String appDocPath = '';

void main() async {
  await dotenv.load(fileName: '.env');
  appDocPath = (await getApplicationDocumentsDirectory()).path;
  await configureDependencies();
  await initializeDateFormatting('ru_RU');
  Intl.defaultLocale = 'ru_RU';

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<AuthCubit>()..intialLoadMe()),
        BlocProvider(
          create: (context) => sl<HelpRequestsListCubit>()..findAll(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = sl<AppRouter>();
    final textTheme = Theme.of(context).textTheme
        .merge(GoogleFonts.interTightTextTheme())
        .apply(fontSizeDelta: 2);

    return MaterialApp.router(
      title: 'Мост домой',
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF0D9387),
          primary: Color(0xFF0D9387),
          onPrimary: Colors.white,
          surface: Colors.white,
          surfaceContainer: Color(0xFFF2F2F2),
          onSurfaceVariant: Colors.black.withAlpha(128),
          brightness: Brightness.light,
        ),
        textTheme: textTheme,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF2F2F2),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF0D9387), width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
            textStyle: WidgetStatePropertyAll(
              textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(vertical: 13, horizontal: 20),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            side: WidgetStatePropertyAll(BorderSide(color: Color(0xFF0D9387))),
            textStyle: WidgetStatePropertyAll(
              textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Color(0xFFF2F2F2),
            contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF0D9387), width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        FormBuilderLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: FormBuilderLocalizations.supportedLocales,
      locale: Locale('ru', 'RU'),
      routerConfig: appRouter.config(),
    );
  }
}
