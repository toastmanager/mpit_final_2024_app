import 'package:flutter/material.dart';
import 'package:mpit_final_2024_app/features/auth/presentation/widgets/login_screen.dart';
import 'package:mpit_final_2024_app/features/auth/presentation/widgets/registration_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(tabs: [Tab(text: 'Вход'), Tab(text: 'Регистрация')]),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TabBarView(
                    children: [
                      Center(child: LoginScreen()),
                      Center(child: RegistrationScreen()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
