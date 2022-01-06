import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/number_trivia_entity.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTriviaUsecase
    implements UseCase<NumberTriviaEntity, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTriviaUsecase(this.repository);

  @override
  Future<Either<Failure, NumberTriviaEntity>> call(NoParams params) async =>
      await repository.getRandomNumberTrivia();
}
