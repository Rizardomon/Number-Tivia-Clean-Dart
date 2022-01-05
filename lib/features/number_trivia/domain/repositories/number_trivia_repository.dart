import '../../../../core/error/failures.dart';
import '../entities/number_trivia_entity.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTriviaEntity>> getConcreteNumberTrivia(
      int number);

  Future<Either<Failure, NumberTriviaEntity>> getRandomNumberTrivia();
}
