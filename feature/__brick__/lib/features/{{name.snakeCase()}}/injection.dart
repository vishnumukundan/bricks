import 'package:get_it/get_it.dart';

import 'data/data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';
import 'data/repository/{{name.snakeCase()}}_repository_impl.dart';
import 'domain/repository/{{name.snakeCase()}}_repository.dart';
import 'domain/usecases/{{name.snakeCase()}}_usecase.dart';
import 'presentation/bloc/{{name.snakeCase()}}_bloc.dart';

// TODO: add this to lib/injection_container.dart
void {{name.camelCase()}}DependencyInjection(GetIt sl) {
  // bloc
  sl.registerFactory(() => {{name.titleCase()}}Bloc(sl()));

  // usecase
  sl.registerLazySingleton(() => {{name.titleCase()}}UseCase(sl()));

  // repository
  sl.registerLazySingleton<{{name.titleCase()}}Repository>(
      () => {{name.titleCase()}}RepositoryImpl(sl()));

  // data sources
  sl.registerLazySingleton<{{name.titleCase()}}RemoteDataSource>(
      () => {{name.titleCase()}}RemoteDataSourceImpl(sl()));
}
