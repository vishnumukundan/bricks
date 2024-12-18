import 'package:dartz/dartz.dart';
import 'package:placeorder_buyer_app/core/errors/failures.dart';
import 'package:placeorder_buyer_app/core/resources/usecase.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/repository/{{name.snakeCase()}}_repository.dart';

class {{name.pascalCase()}}UseCase
    implements UseCase<Either<Failure, {{name.pascalCase()}}Resp>, {{name.pascalCase()}}Req> {
  final {{name.pascalCase()}}Repository _{{name.camelCase()}}Repository;
  {{name.pascalCase()}}UseCase(this._{{name.camelCase()}}Repository);

  @override
  Future<Either<Failure, {{name.pascalCase()}}Resp>> call({
    required {{name.pascalCase()}}Req params,
  }) async {
    // TODO: implement call
    return await _{{name.camelCase()}}Repository.dummy(params);
  }
}
