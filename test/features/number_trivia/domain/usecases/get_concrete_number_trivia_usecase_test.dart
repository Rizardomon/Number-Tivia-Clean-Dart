import 'package:clean_dart/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:clean_dart/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_dart/features/number_trivia/domain/usecases/get_concrete_number_trivia_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  MockNumberTriviaRepository mockNumberTriviaRepository =
      MockNumberTriviaRepository();
  GetConcreteNumberTriviaUsecase usecase =
      GetConcreteNumberTriviaUsecase(mockNumberTriviaRepository);

  setUp(() {});

  final testNumber = 1;
  final testNumberTrivia = NumberTriviaEntity(number: 1, text: 'test');

  test(
    'should get trivia for the number from the repository',
    () async {
      //Arrange
      when(() => mockNumberTriviaRepository.getConcreteNumberTrivia(any()))
          .thenAnswer((realInvocation) async => Right(testNumberTrivia));
      //Act
      final result = await usecase.execute(number: testNumber);
      //Assert
      expect(result, Right(testNumberTrivia));
      verify(
          () => mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber));
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
