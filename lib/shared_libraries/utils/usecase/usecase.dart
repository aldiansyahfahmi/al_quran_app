import 'package:al_quran_app/shared_libraries/utils/error/failure_response.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<T, Params> {
  const UseCase();

  Future<Either<FailureResponse, T>> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
