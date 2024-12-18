import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';

import '../../../../helpers/json_reader.dart';

void main() {
  late Map<String, dynamic> jsonMap;

  setUpAll(() {
    // TODO: create {{name.snakeCase()}}_response.json in test/helpers/dummy_data
    jsonMap = json.decode(
      readJson('helpers/dummy_data/{{name.snakeCase()}}_response.json'),
    );
  });

  group("{{name.pascalCase()}}RespModel", () {
    test('should return a valid model from JSON', () {
      // arrange

      // act
      final result = {{name.pascalCase()}}RespModel.fromJson(jsonMap);

      // assert
      expect(result, isA<{{name.pascalCase()}}RespModel>());
    });
    test(
      'should convert the model to {{name.pascalCase()}}Resp entity',
      () {
        // arrange
        final t{{name.pascalCase()}}RespModel = {{name.pascalCase()}}RespModel.fromJson(jsonMap);

        // act
        final result = t{{name.pascalCase()}}RespModel.toEntity();

        // assert
        expect(result, isA<{{name.pascalCase()}}Resp>());
      },
    );
  });
}
