import 'package:daca_konya_app/features/authentication/presentation/bloc/auth_mode_cubit/auth_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthModeButtons extends StatelessWidget {
  const AuthModeButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.75),
              border: Border(
                  top: BorderSide(width: 4, color: Colors.white),
                  right: BorderSide(width: 2, color: Colors.white)),
              boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 2),
                BoxShadow(color: Colors.white, blurRadius: 2),
                BoxShadow(color: Colors.white, blurRadius: 2),
                BoxShadow(color: Colors.white, blurRadius: 2),
              ],
            ),
            child: TextButton(
              child: Text(
                "LOG IN",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white60),
              ),
              onPressed: () =>
                  BlocProvider.of<AuthModeCubit>(context).goToLogIn(),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.75),
              border: Border(
                  top: BorderSide(width: 4, color: Colors.white),
                  left: BorderSide(width: 2, color: Colors.white)),
              boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 2),
                BoxShadow(color: Colors.white, blurRadius: 2),
                BoxShadow(color: Colors.white, blurRadius: 2),
                BoxShadow(color: Colors.white, blurRadius: 2),
              ],
            ),
            child: TextButton(
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white60,
                ),
              ),
              onPressed: () =>
                  BlocProvider.of<AuthModeCubit>(context).goToSignUp(),
            ),
          ),
        ),
      ],
    );
  }
}
