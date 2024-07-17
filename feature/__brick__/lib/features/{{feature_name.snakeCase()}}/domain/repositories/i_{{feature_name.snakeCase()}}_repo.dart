import 'package:expense_tracker/core/resources/data_state.dart';
import 'package:expense_tracker/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';

abstract class I{{feature_name.pascalCase()}}Repo {
  // TODO: Define actual method with return type
  Future<DataState<{{feature_name.pascalCase()}}>> fetch();
}
