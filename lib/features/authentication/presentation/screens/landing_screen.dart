import 'package:daca_konya_app/features/authentication/di/home_di.dart';
import 'package:daca_konya_app/features/authentication/presentation/bloc/auth_mode_cubit/auth_mode_cubit.dart';
import 'package:daca_konya_app/features/authentication/presentation/screens/log_in_screen.dart';
import 'package:daca_konya_app/features/authentication/presentation/screens/sing_up_screen.dart';
import 'package:daca_konya_app/features/authentication/presentation/widgets/auth_mode_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatelessWidget {
  static const route = "/landing_screen";
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthModeCubit, AuthModeState>(
        listener: (context, state) {
          print(state);
          if (state is AuthModeLogIn)
            Navigator.of(context).pushNamed(LogInScreen.route);
          if (state is AuthModeSignUp)
            Navigator.of(context).pushNamed(SingUpScreen.route);
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                flex: 8,
                child: Center(
                  child: Text(
                    "DACAapp",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 45,
                    ),
                  ),
                ),
              ),
              Flexible(flex: 1, child: AuthModeButtons())
            ],
          ),
        ));
  }
}
