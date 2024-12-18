import 'package:placeorder_buyer_app/core/domain/entities/base_entity.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';
import 'package:placeorder_buyer_app/core/data/models/remote_response_model.dart';

class {{name.pascalCase()}}Req extends BaseEntity<{{name.pascalCase()}}ReqModel> {
  // TODO: add properties
  {{name.pascalCase()}}Req();

  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  {{name.pascalCase()}}ReqModel toModel() {
    // TODO: Implement toModel
    throw UnimplementedError();
  }
}

class {{name.pascalCase()}}Resp extends BaseEntity<{{name.pascalCase()}}RespModel> {
  final String customerMessage;
  final bool? status;
  final String successCode;
  final RemoteResponseDebugInfoModel? debugInfo;
  final String errorCode;
  final dynamic info;
  // TODO: Add properties
  {{name.pascalCase()}}Resp({
    required this.errorCode,
    required this.customerMessage,
    required this.successCode,
    this.status,
    this.debugInfo,
    this.info,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [errorCode, customerMessage, successCode, status, debugInfo, info,];

  @override
  {{name.pascalCase()}}RespModel toModel() {
     // TODO: Implement toModel
    return {{name.pascalCase()}}RespModel(
      errorCode: errorCode,
      customerMessage: customerMessage,
      successCode: successCode,
      status: status ?? false,
      debugInfo: debugInfo,
      info: info,
    );
  }
}

class {{name.pascalCase()}} extends BaseEntity<{{name.pascalCase()}}Model> {
  // TODO: Add properties
  {{name.pascalCase()}}();

  // TODO: Add copyWith method
  {{name.pascalCase()}} copyWith() => {{name.pascalCase()}}();

  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  {{name.pascalCase()}}Model toModel() {
    // TODO: Implement toModel
    throw UnimplementedError();
  }
}
