import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestionuh/src/data/repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({
    this.authRepository,
  });

  @override
  LoginState get initialState => LoginAttemptInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginAttempted) {
      yield* handleLoginAttempted(event);
    }
  }
}

Stream<LoginState> handleLoginAttempted(LoginAttempted event) async* {
  yield LoginAttemptInProgress();
}
