import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:placeorder_buyer_app/core/errors/exceptions.dart';
import 'package:placeorder_buyer_app/core/errors/failures.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/repository/{{name.snakeCase()}}_repository_impl.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/mocks.mocks.dart';

void main() {
  // TODO: Add {{name.pascalCase()}}RemoteDataSource into test/helpers/mocks.dart
  late Mock{{name.pascalCase()}}RemoteDataSource mock{{name.pascalCase()}}RemoteDataSource;
  late {{name.pascalCase()}}RepositoryImpl {{name.camelCase()}}RepositoryImpl;
  late {{name.pascalCase()}}RespModel t{{name.pascalCase()}}RespModel;

  final t{{name.pascalCase()}}ReqModel = {{name.pascalCase()}}ReqModel();

  setUp(() {
    mock{{name.pascalCase()}}RemoteDataSource = Mock{{name.pascalCase()}}RemoteDataSource();
    {{name.camelCase()}}RepositoryImpl = {{name.pascalCase()}}RepositoryImpl(
      mock{{name.pascalCase()}}RemoteDataSource,
    );

    // TODO: create {{name.snakeCase()}}_response.json in test/helpers/dummy_data
    final Map<String, dynamic> jsonMap = json.decode(
      readJson('helpers/dummy_data/{{name.snakeCase()}}_response.json'),
    );

    t{{name.pascalCase()}}RespModel = {{name.pascalCase()}}RespModel.fromJson(jsonMap);
  });

  // TODO: rename dummy() to the actual method name
  group('{{name.pascalCase()}}RepositoryImpl dummy()', () {
    test(
      'should return {{name.pascalCase()}}RespModel when the call to the remote data source is successful',
      () async {
        // arrange
        when(mock{{name.pascalCase()}}RemoteDataSource.dummy(
          t{{name.pascalCase()}}ReqModel,
        )).thenAnswer(
          (_) async => Future.value(t{{name.pascalCase()}}RespModel),
        );

        // act
        final result = await {{name.camelCase()}}RepositoryImpl.dummy(
          t{{name.pascalCase()}}ReqModel.toEntity(),
        );

        // assert
        expect(result, equals(Right(t{{name.pascalCase()}}RespModel.toEntity())));
      },
    );

    test(
      'should return ServerFailure when the call to the remote data source is unsuccessful due to a server error',
      () async {
        // arrange
        when(mock{{name.pascalCase()}}RemoteDataSource.dummy(
          t{{name.pascalCase()}}ReqModel,
        )).thenThrow(
          ServerException(message: 'Server Error'),
        );

        // act
        final result = await {{name.camelCase()}}RepositoryImpl.dummy(
          t{{name.pascalCase()}}ReqModel.toEntity(),
        );

        // assert
        expect(result, equals(Left(ServerFailure(message: 'Server Error'))));
      },
    );

    test(
      'should return ClientFailure when the call to the remote data source is unsuccessful due to a client error',
      () async {
        // arrange
        when(mock{{name.pascalCase()}}RemoteDataSource.dummy(
          t{{name.pascalCase()}}ReqModel,
        )).thenThrow(
          ClientException(message: 'Client Error'),
        );

        // act
        final result = await {{name.camelCase()}}RepositoryImpl.dummy(
          t{{name.pascalCase()}}ReqModel.toEntity(),
        );

        // assert
        expect(result, equals(Left(ClientFailure(message: 'Client Error'))));
      },
    );

    test(
      'should return NetworkFailure when the call to the remote data source is unsuccessful due to a network error',
      () async {
        // arrange
        when(mock{{name.pascalCase()}}RemoteDataSource.dummy(
          t{{name.pascalCase()}}ReqModel,
        )).thenThrow(
          NetworkException(message: 'Network Error'),
        );

        // act
        final result = await {{name.camelCase()}}RepositoryImpl.dummy(
          t{{name.pascalCase()}}ReqModel.toEntity(),
        );

        // assert
        expect(result, equals(Left(NetworkFailure(message: 'Network Error'))));
      },
    );
  });
}
