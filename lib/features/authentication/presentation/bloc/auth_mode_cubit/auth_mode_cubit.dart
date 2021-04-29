import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_mode_state.dart';

class AuthModeCubit extends Cubit<AuthModeState> {
  AuthModeCubit() : super(AuthModeInitial());

  void goToLogIn() => emit(AuthModeLogIn());
  void goToSignUp() => emit(AuthModeSignUp());
}
