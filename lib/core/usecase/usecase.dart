import 'package:dartz/dartz.dart';
import 'package:marvel_mission_manager/core/constants/failures.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}

class NoParams {}
