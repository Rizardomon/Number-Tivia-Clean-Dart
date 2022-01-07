import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/entities/number_trivia_entity.dart';
import '../../domain/repositories/number_trivia_repository.dart';
import '../datasources/number_trivia_local_data_source.dart';
import '../datasources/number_trivia_remote_data_source.dart';

class NumberTriviaRepositoryImp implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImp(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, NumberTriviaEntity>> getConcreteNumberTrivia(
      int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTriviaEntity>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
