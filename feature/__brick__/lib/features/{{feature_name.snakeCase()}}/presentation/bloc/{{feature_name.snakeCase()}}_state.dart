import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:replace_with_project_name/core/resources/data_state.dart';
import 'package:replace_with_project_name/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';

part '{{feature_name.snakeCase()}}_state.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {

  const factory {{feature_name.pascalCase()}}State.initial() = _Initial;

  const factory {{feature_name.pascalCase()}}State.loading(bool isLoading) = _Loading;

  const factory {{feature_name.pascalCase()}}State.error({
    required DataError error,
    required bool isLoading,
    }) = _Error;
  
  const factory {{feature_name.pascalCase()}}State.success({
    required DataSuccess <{{feature_name.pascalCase()}}> data,
    required bool isLoading,
    }) = _Success;
}
