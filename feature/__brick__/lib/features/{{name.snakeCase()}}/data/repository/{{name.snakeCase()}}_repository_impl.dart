import 'package:dartz/dartz.dart';
import 'package:placeorder_buyer_app/core/errors/failures.dart';
import 'package:placeorder_buyer_app/core/util/exception_handler.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/repository/{{name.snakeCase()}}_repository.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}RemoteDataSource _{{name.camelCase()}}RemoteDataSource;
  {{name.pascalCase()}}RepositoryImpl(this._{{name.camelCase()}}RemoteDataSource);
  
  // TODO: Implement methods
  @override
  Future<Either<Failure, {{name.pascalCase()}}Resp>> dummy(
    {{name.pascalCase()}}Req {{name.camelCase()}}Req,
  ) async {
      // TODO: Implement this method
    try {
    final httpResponse = await _{{name.camelCase()}}RemoteDataSource.dummy({{name.camelCase()}}Req.toModel());
    return Right(httpResponse.toEntity());
    } catch (e) {
      return Left(handleExceptionToFailure(e));
    }
  }
}
