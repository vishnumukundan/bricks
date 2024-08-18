import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name.snakeCase()}}_event.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}Event with _${{feature_name.pascalCase()}}Event {
  // TODO: Define your events here
  const factory {{feature_name.pascalCase()}}Event.init() = Init;
}
