import 'package:expense_tracker/core/resources/data_state.dart';
import 'package:expense_tracker/core/usecases/usecases.dart';
import 'package:expense_tracker/features/{{feature_name.snakeCase()}}/data/repositories/{{feature_name.snakeCase()}}_repo.dart';
import 'package:expense_tracker/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';


class Fetch{{feature_name.pascalCase()}}Usecase
    implements UserCase<DataState<{{feature_name.pascalCase()}}>, void> {
  final {{feature_name.pascalCase()}}Repo _repo;
  Fetch{{feature_name.pascalCase()}}Usecase(this._repo);

  @override
  Future<DataState<{{feature_name.pascalCase()}}>> call({void params}) async {
    return await _repo.fetch();
  }
}
