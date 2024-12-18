import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:placeorder_buyer_app/core/errors/exceptions.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/mocks.mocks.dart';

void main() {
  late MockNetworkClient mockNetworkClient;
  late {{name.pascalCase()}}RemoteDataSourceImpl {{name.camelCase()}}RemoteDataSourceImpl;

  late Map<String, dynamic> jsonMap;

  setUp(() {
    mockNetworkClient = MockNetworkClient();
    {{name.camelCase()}}RemoteDataSourceImpl =
        {{name.pascalCase()}}RemoteDataSourceImpl(mockNetworkClient);

    // TODO: create {{name.snakeCase()}}_response.json in test/helpers/dummy_data
    jsonMap = json.decode(
      readJson('helpers/dummy_data/{{name.snakeCase()}}_response.json'),
    );
  });

  final {{name.pascalCase()}}ReqModel test{{name.pascalCase()}}ReqModel = {{name.pascalCase()}}ReqModel();

  // TODO: rename dummy() to the actual method name
  group('{{name.pascalCase()}}RemoteDataSourceImpl dummy()', () {
    test(
      'should return {{name.pascalCase()}}RespModel when the API call is successful',
      () async {
        // Arrange
        when(mockNetworkClient.post(
          '', // TODO: add API path
          data: test{{name.pascalCase()}}ReqModel.toJson(),
        )).thenAnswer(
          (_) async => Future.value(
            Response(
              requestOptions: RequestOptions(path: ''), // TODO: add API path
              data: jsonMap,
              statusCode: 200,
            ),
          ),
        );

        // Act
        final result =
            await {{name.camelCase()}}RemoteDataSourceImpl.dummy(test{{name.pascalCase()}}ReqModel);

        // Assert
        expect(result, isA<{{name.pascalCase()}}RespModel>());
      },
    );

    test(
      'should throw ClientException when the API call returns a 404 status code',
      () async {
        // Arrange
        when(mockNetworkClient.post(
          '', // TODO: add API path
          data: test{{name.pascalCase()}}ReqModel.toJson(),
        )).thenAnswer((_) async => Future.value(
              Response(
                requestOptions:
                    RequestOptions(path: ''), // TODO: add API path
                statusCode: 404,
                data: {
                  "errorCode": "EONDC0000",
                  "customerMessage": "Not Found",
                  "successCode": "",
                },
              ),
            ));

        // Act
        final response =
            {{name.camelCase()}}RemoteDataSourceImpl.dummy(test{{name.pascalCase()}}ReqModel);

        // Assert
        expect(response, throwsA(isA<ClientException>()));
      },
    );

    test(
      'should throw ServerException when the API call returns a 503 status code',
      () async {
        // Arrange
        when(mockNetworkClient.post(
          '', // TODO: add API path
          data: test{{name.pascalCase()}}ReqModel.toJson(),
        )).thenAnswer((_) async => Future.value(
              Response(
                requestOptions:
                    RequestOptions(path: ''), // TODO: add API path
                statusCode: 503,
                data: {
                  "errorCode": "EONDC0000",
                  "customerMessage": "Service Unavailable",
                  "successCode": "",
                },
              ),
            ));

        // Act
        final response =
            {{name.camelCase()}}RemoteDataSourceImpl.dummy(test{{name.pascalCase()}}ReqModel);

        // Assert
        expect(response, throwsA(isA<ServerException>()));
      },
    );
  });

  test(
    'should return DataParsingException when the API call returns a TypeError',
    () async {
      // Arrange
      when(mockNetworkClient.post(
        '', // TODO: add API path
        data: test{{name.pascalCase()}}ReqModel.toJson(),
      )).thenThrow(TypeError());

      // Act
      final response =
          {{name.camelCase()}}RemoteDataSourceImpl.dummy(test{{name.pascalCase()}}ReqModel);

      // Assert
      expect(response, throwsA(isA<DataParsingException>()));
    },
  );
}
