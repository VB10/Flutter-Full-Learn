import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_cubit_state.dart';
import '../model/login_model.dart';
import '../service/login_service.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(ILoginService loginService)
      : _loginService = loginService,
        super(const LoginState());
  final ILoginService _loginService;

  Future<void> checkUser(String email, String password) async {
    emit(state.copyWith(isLoading: true, model: LoginModel(email, password)));
    final response = await _loginService.login(state.model!);
    emit(state.copyWith(isLoading: false, isCompleted: response?.data != null));

    print('a');
  }

  void veli() {}
}
