import 'package:placeorder_buyer_app/core/errors/exceptions.dart';
import 'package:placeorder_buyer_app/core/http/http_error_handler.dart';
import 'package:placeorder_buyer_app/core/http/network_client.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';

abstract class {{name.pascalCase()}}RemoteDataSource {
  // TODO: Rename method
  Future<{{name.pascalCase()}}RespModel> dummy(
    {{name.pascalCase()}}ReqModel {{name.camelCase()}}Req,
  );
}

class {{name.pascalCase()}}RemoteDataSourceImpl implements {{name.pascalCase()}}RemoteDataSource {
  final NetworkClient client;
  {{name.pascalCase()}}RemoteDataSourceImpl(this.client);

  @override
  Future<{{name.pascalCase()}}RespModel> dummy({{name.pascalCase()}}ReqModel {{name.camelCase()}}Req) async {
    try {
      final response = await client.post(
        // TODO: Add endpoint
        '',
        data: {{name.camelCase()}}Req.toJson(),
      );

      if (response.statusCode == 200) {
        return {{name.pascalCase()}}RespModel.fromJson(response.data);
      } else {
        throw handleNetworkStatusCode(response.statusCode);
      }
    } on TypeError catch (e) {
      throw DataParsingException(message: e.toString());
    } catch (e) {
      rethrow;
    }
  }
}
