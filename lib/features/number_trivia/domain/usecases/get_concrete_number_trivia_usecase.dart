import '../../../../core/error/failures.dart';
import '../entities/number_trivia_entity.dart';
import 'package:dartz/dartz.dart';

import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTriviaUsecase {
  final NumberTriviaRepository repository;

  GetConcreteNumberTriviaUsecase(this.repository);

  Future<Either<Failure, NumberTriviaEntity>> execute(
      {required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
