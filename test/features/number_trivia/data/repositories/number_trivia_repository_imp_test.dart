import 'package:flutter_test/flutter_test.dart';

import 'package:clean_dart/features/number_trivia/data/repositories/number_trivia_repositiry_imp.dart';
import 'package:clean_dart/core/platform/network_info.dart';
import 'package:clean_dart/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:clean_dart/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';

import 'package:mocktail/mocktail.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockRemoteDataSource mockRemoteDataSource = MockRemoteDataSource();
  MockLocalDataSource mockLocalDataSource = MockLocalDataSource();
  MockNetworkInfo mockNetworkInfo = MockNetworkInfo();

  NumberTriviaRepositoryImp repository = NumberTriviaRepositoryImp(
    remoteDataSource: mockRemoteDataSource,
    localDataSource: mockLocalDataSource,
    networkInfo: mockNetworkInfo,
  );

  setUp(() {});
}
