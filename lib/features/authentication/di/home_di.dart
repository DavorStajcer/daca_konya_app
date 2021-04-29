import 'package:daca_konya_app/features/authentication/presentation/bloc/auth_mode_cubit/auth_mode_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initHomeDi() {
  getIt.registerFactory(() => AuthModeCubit());
}
