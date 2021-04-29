import 'package:daca_konya_app/features/authentication/di/home_di.dart';
import 'package:daca_konya_app/features/authentication/presentation/bloc/auth_mode_cubit/auth_mode_cubit.dart';
import 'package:daca_konya_app/features/authentication/presentation/screens/landing_screen.dart';
import 'package:daca_konya_app/features/authentication/presentation/screens/log_in_screen.dart';
import 'package:daca_konya_app/features/authentication/presentation/screens/sing_up_screen.dart';
import 'package:daca_konya_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main(List<String> args) {
  initHomeDi();
  runApp(DacaApp());
}

class DacaApp extends StatelessWidget {
  const DacaApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AuthModeCubit>(
            create: (_) => getIt<AuthModeCubit>(),
          ),
        ],
        child: LandingScreen(),
      ),
      theme: ThemeData(primaryColor: Colors.deepOrange),
      routes: {
        LogInScreen.route: (_) => LogInScreen(),
        SingUpScreen.route: (_) => SingUpScreen(),
        HomeScreen.route: (_) => HomeScreen(),
        LandingScreen.route: (_) => LandingScreen(),
      },
    );
  }
}
