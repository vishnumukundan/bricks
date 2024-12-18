import 'package:flutter_test/flutter_test.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_bloc.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_state.dart';

import '../../../../helpers/mocks.mocks.dart';

void main() {
  late {{name.pascalCase()}}Bloc {{name.camelCase()}}Bloc;
  // TODO: Add {{name.pascalCase()}}UseCase into test/helpers/mocks.dart
  late Mock{{name.pascalCase()}}UseCase mock{{name.pascalCase()}}UseCase;

  // late {{name.pascalCase()}}Req t{{name.pascalCase()}}Req;
  // late {{name.pascalCase()}}Resp t{{name.pascalCase()}}Resp;

  setUp(() {
    mock{{name.pascalCase()}}UseCase = Mock{{name.pascalCase()}}UseCase();
    {{name.camelCase()}}Bloc = {{name.pascalCase()}}Bloc(mock{{name.pascalCase()}}UseCase);

    // t{{name.pascalCase()}}Req = {{name.pascalCase()}}Req();

    // TODO: create {{name.snakeCase()}}_response.json in test/helpers/dummy_data
    // final Map<String, dynamic> jsonMap = json.decode(
    //   readJson('helpers/dummy_data/{{name.snakeCase()}}_response.json'),
    // );

    // t{{name.pascalCase()}}Resp = {{name.pascalCase()}}RespModel.fromJson(jsonMap).toEntity();
  });

  group(
    "{{name.pascalCase()}}Bloc()",
    () {
      test('initial state should be {{name.pascalCase()}}Initial', () {
        expect({{name.camelCase()}}Bloc.state, equals({{name.pascalCase()}}Initial()));
      });

      // blocTest<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      //   '',
      //   build: () {},
      //   act: (bloc) =>,
      //   expect: () => [],
      // );
    },
  );
}
