import 'package:clean_dart/core/usecases/usecase.dart';
import 'package:clean_dart/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:clean_dart/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_dart/features/number_trivia/domain/usecases/get_random_number_trivia_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  MockNumberTriviaRepository mockNumberTriviaRepository =
      MockNumberTriviaRepository();
  GetRandomNumberTriviaUsecase usecase =
      GetRandomNumberTriviaUsecase(mockNumberTriviaRepository);

  setUp(() {});

  final testNumberTrivia = NumberTriviaEntity(number: 1, text: 'test');

  test(
    'should get trivia from the repository',
    () async {
      //Arrange
      when(() => mockNumberTriviaRepository.getRandomNumberTrivia())
          .thenAnswer((realInvocation) async => Right(testNumberTrivia));
      //Act
      final result = await usecase(NoParams());
      //Assert
      expect(result, Right(testNumberTrivia));
      verify(() => mockNumberTriviaRepository.getRandomNumberTrivia());
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
