import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 1)); // simulate
      if (event.email == "eve.holt@reqres.in" && event.password.isNotEmpty) {
        emit(AuthSuccess("fake_token_123"));
      } else {
        emit(AuthFailure("Invalid credentials"));
      }
    });

    on<RegisterRequested>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 1)); // simulate
      if (event.email.isNotEmpty && event.password.length > 5) {
        emit(AuthSuccess("fake_token_123"));
      } else {
        emit(AuthFailure("Registration failed"));
      }
    });
  }
}
