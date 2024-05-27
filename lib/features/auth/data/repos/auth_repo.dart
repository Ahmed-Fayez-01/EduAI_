import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

import '../models/auth_model.dart';

abstract class AuthRepo{
  Future<Either<Failure,AuthModel>> loginUser({required String mobileNumber,required String idNumber});
}