import 'package:flutter_bloc/flutter_bloc.dart';
import '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit() : super(const {{feature_name.pascalCase()}}State.initial());

  void init() {
    emit(
      state.when(
        initial: () => const {{feature_name.pascalCase()}}State.initial(),
        loading: (isLoading) => {{feature_name.pascalCase()}}State.loading(isLoading),
        error: (error, isLoading) => {{feature_name.pascalCase()}}State.error(
          error: error,
          isLoading: false,
        ),
        success: (data, isLoading) => {{feature_name.pascalCase()}}State.success(
          data: data,
          isLoading: false,
        ),
      ),
    );
  }
}
