import 'package:dartz/dartz.dart';
import 'package:placeorder_buyer_app/core/errors/failures.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';

abstract class {{name.pascalCase()}}Repository {
  // TODO: Implement methods
  Future<Either<Failure, {{name.pascalCase()}}Resp>> dummy({{name.pascalCase()}}Req {{name.camelCase()}}Req);
}
