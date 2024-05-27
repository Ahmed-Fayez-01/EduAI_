import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../../data/repos/auth_repo.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  AuthRepo? authRepo;
  Future<void> loginUser({required String mobileNumber,required String idNumber}) async {
    emit(UserLoginLoadingState());
    var result = await authRepo!.loginUser(mobileNumber: mobileNumber, idNumber: idNumber);
    return result.fold((failure) {
      emit(UserLoginErrorState(failure.errMessage));
    }, (data) {
      emit(UserLoginSuccessState());
    });
  }
}
