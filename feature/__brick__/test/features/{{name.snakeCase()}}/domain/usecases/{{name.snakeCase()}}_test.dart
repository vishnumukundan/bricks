import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/usecases/{{name.snakeCase()}}_usecase.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/mocks.mocks.dart';

void main() {
  // TODO: Add {{name.pascalCase()}}Repository into test/helpers/mocks.dart
  late Mock{{name.pascalCase()}}Repository mock{{name.pascalCase()}}Repository;
  late {{name.pascalCase()}}UseCase {{name.camelCase()}}UseCase;

  late {{name.pascalCase()}}ReqModel t{{name.pascalCase()}}ReqModel;
  late {{name.pascalCase()}}RespModel t{{name.pascalCase()}}RespModel;

  setUp(() {
    mock{{name.pascalCase()}}Repository = Mock{{name.pascalCase()}}Repository();
    {{name.camelCase()}}UseCase = {{name.pascalCase()}}UseCase(mock{{name.pascalCase()}}Repository);

    t{{name.pascalCase()}}ReqModel = {{name.pascalCase()}}ReqModel();
    
    // TODO: create {{name.snakeCase()}}_response.json in test/helpers/dummy_data
    final Map<String, dynamic> jsonMap = json.decode(
      readJson('helpers/dummy_data/{{name.snakeCase()}}_response.json'),
    );

    t{{name.pascalCase()}}RespModel = {{name.pascalCase()}}RespModel.fromJson(jsonMap);
  });

  test('should get {{name.titleCase()}} response from the repository', () async {
    // arrange
    final t{{name.pascalCase()}}Req = t{{name.pascalCase()}}ReqModel.toEntity();

    final t{{name.pascalCase()}}Resp = t{{name.pascalCase()}}RespModel.toEntity();

    when(mock{{name.pascalCase()}}Repository.dummy(
      t{{name.pascalCase()}}ReqModel.toEntity(),
    )).thenAnswer((_) async => Right(t{{name.pascalCase()}}Resp));

    // act
    final result = await {{name.camelCase()}}UseCase(params: t{{name.pascalCase()}}Req);

    // assert
    expect(result, Right(t{{name.pascalCase()}}Resp));
  });
}
