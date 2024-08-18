import 'package:json_annotation/json_annotation.dart';
import 'package:{{project_name}}/core/util/models/api_response_model.dart';
import 'package:{{project_name}}/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';

part '{{feature_name.snakeCase()}}_model.g.dart';


@JsonSerializable()
class {{feature_name.pascalCase()}}ReqModel {
  {{feature_name.pascalCase()}}ReqModel();

  factory {{feature_name.pascalCase()}}ReqModel.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}ReqModelFromJson(json);

  Map<String, dynamic> toJson() => _${{feature_name.pascalCase()}}ReqModelToJson(this);
}

@JsonSerializable()
class {{feature_name.pascalCase()}}RespModel extends ApiRespModel{
  final {{feature_name.pascalCase()}}Model data;
  {{feature_name.pascalCase()}}RespModel({
    required super.errorCode,
    required super.customerMessage,
    required super.successCode,
    required super.status,
    required super.debugInfo,
    required super.info,
    required this.data,
  });

  factory {{feature_name.pascalCase()}}RespModel.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}RespModelFromJson(json);

  Map<String, dynamic> toJson() => _${{feature_name.pascalCase()}}RespModelToJson(this);
}

@JsonSerializable()
class {{feature_name.pascalCase()}}Model extends {{feature_name.pascalCase()}} {
  {{feature_name.pascalCase()}}Model({
    required super.id,
  });

  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}ModelFromJson(json);

  Map<String, dynamic> toJson() => _${{feature_name.pascalCase()}}ModelToJson(this);
}