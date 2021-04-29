part of 'auth_mode_cubit.dart';

@immutable
abstract class AuthModeState {}

class AuthModeLogIn extends AuthModeState {}

class AuthModeSignUp extends AuthModeState {}

class AuthModeInitial extends AuthModeState {}
