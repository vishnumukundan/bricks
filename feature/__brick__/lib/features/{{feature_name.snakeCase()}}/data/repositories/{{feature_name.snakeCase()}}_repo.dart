import 'package:expense_tracker/core/resources/data_state.dart';
import 'package:expense_tracker/features/{{feature_name.snakeCase()}}/data/source/remote/{{feature_name.snakeCase()}}_remote_data_source.dart';
import 'package:expense_tracker/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:expense_tracker/features/{{feature_name.snakeCase()}}/domain/repositories/i_{{feature_name.snakeCase()}}_repo.dart';

class {{feature_name.pascalCase()}}Repo implements I{{feature_name.pascalCase()}}Repo {
  final {{feature_name.pascalCase()}}RemoteDataSourceImpl _remoteDataSource =
      {{feature_name.pascalCase()}}RemoteDataSourceImpl();

  @override
  Future<DataState<{{feature_name.pascalCase()}}>> fetch() {
    return _remoteDataSource.fetch();
  }
}
