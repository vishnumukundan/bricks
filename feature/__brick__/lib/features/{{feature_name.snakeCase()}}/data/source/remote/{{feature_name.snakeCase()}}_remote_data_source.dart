import 'package:expense_tracker/core/errors/exception_handler.dart';
import 'package:expense_tracker/core/network/dio_service/dio_builder.dart';
import 'package:expense_tracker/core/resources/data_state.dart';
import 'package:expense_tracker/features/{{feature_name.snakeCase()}}/data/models/{{feature_name.snakeCase()}}_model.dart';

abstract interface class {{feature_name.pascalCase()}}RemoteDataSource {
  Future<DioBuilderResponse> dio();
  Future<DataState<{{feature_name.pascalCase()}}Model>> fetch();
}

class {{feature_name.pascalCase()}}RemoteDataSourceImpl implements {{feature_name.pascalCase()}}RemoteDataSource {
  @override
  Future<DioBuilderResponse> dio() async {
    return await DioBuilder().buildDio();
  }

  @override
  Future<DataState<{{feature_name.pascalCase()}}Model>> fetch() async {
    DioBuilderResponse dioBuilderResponse = await dio();
  
  final exceptionHandler = ExceptionHandler<{{feature_name.pascalCase()}}Model>();

  return exceptionHandler.handle(
        request: () => dioBuilderResponse.dio.post<{{feature_name.pascalCase()}}Model>(
          // TODO: Define API endpoint
          "API_ENDPOINT",
          // TODO: Define request data
          data: {},
          options: dioBuilderResponse.dioOptions,
        ),
        onSuccessResponse: (data) {},
      );
    }
}
