import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/number_trivia_entity.dart';
import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTriviaUsecase
    implements UseCase<NumberTriviaEntity, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTriviaUsecase(this.repository);

  @override
  Future<Either<Failure, NumberTriviaEntity>> call(Params params) async =>
      await repository.getConcreteNumberTrivia(params.number);
}

class Params extends Equatable {
  final int number;

  Params({required this.number});

  @override
  List<Object> get props => [number];
}
