import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpit_final_2024_app/core/routes/router.dart';
import 'package:mpit_final_2024_app/core/routes/router.gr.dart';
import 'package:mpit_final_2024_app/injection.dart';

class ChatbotHero extends StatelessWidget {
  const ChatbotHero({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = TextTheme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff0FAC9E), Color(0xff0E998D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'У нас есть ответы\nна любые вопросы',
                style: GoogleFonts.geologicaTextTheme().bodyLarge?.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    height: 134,
                    child: Container(
                      width: 230,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            offset: Offset(0, 4),
                            color: Colors.black.withAlpha(26),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    child: Container(
                      width: 270,
                      height: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            offset: Offset(0, 4),
                            color: Colors.black.withAlpha(26),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 321,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6,
                          offset: Offset(0, 4),
                          color: Colors.black.withAlpha(26),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Как оформить удостоверение\nветерана?',
                        textAlign: TextAlign.center,
                        style: fonts.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => sl<AppRouter>().push(ChatbotRoute()),
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(321, 46)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.white.withAlpha(51),
                  ),
                ),
                child: Text('Спросить у ИИ'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
