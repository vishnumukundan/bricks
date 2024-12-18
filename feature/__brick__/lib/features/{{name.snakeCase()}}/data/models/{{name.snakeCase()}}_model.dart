import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:placeorder_buyer_app/core/data/models/base_model.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:placeorder_buyer_app/core/data/models/remote_response_model.dart';

part '{{name.snakeCase()}}_model.g.dart';

@JsonSerializable()
class {{name.pascalCase()}}ReqModel extends BaseModel<{{name.pascalCase()}}Req> {
  // TODO: Add properties
  {{name.pascalCase()}}ReqModel();

  factory {{name.pascalCase()}}ReqModel.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}ReqModelFromJson(json);

  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ReqModelToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  {{name.pascalCase()}}Req toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }
}

@JsonSerializable()
class {{name.pascalCase()}}RespModel extends BaseModel<{{name.pascalCase()}}Resp> {
  final String customerMessage;
  final bool? status;
  final String successCode;
  final RemoteResponseDebugInfoModel? debugInfo;
  final String errorCode;
  final dynamic info;
  // TODO: Add properties
  {{name.pascalCase()}}RespModel({
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
  {{name.pascalCase()}}Resp toEntity() {
    // TODO: implement toEntity
   return {{name.pascalCase()}}Resp(
      errorCode: errorCode,
      customerMessage: customerMessage,
      successCode: successCode,
      status: status ?? false,
      debugInfo: debugInfo,
      info: info,
    );
  }

  factory {{name.pascalCase()}}RespModel.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}RespModelFromJson(json);

  Map<String, dynamic> toJson() => _${{name.pascalCase()}}RespModelToJson(this);
}

@JsonSerializable()
class {{name.pascalCase()}}Model extends BaseModel<{{name.pascalCase()}}> {
  // TODO: Add properties
  {{name.pascalCase()}}Model();

  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  {{name.pascalCase()}} toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }

  factory {{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}ModelFromJson(json);

  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ModelToJson(this);
}