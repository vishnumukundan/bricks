import 'package:flutter_bloc/flutter_bloc.dart';
import '{{feature_name.snakeCase()}}_event.dart';
import '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc() : super(const {{feature_name.pascalCase()}}State.initial()) {
    on<Init>(_onInit);
  }

  void _onInit(Init event, Emitter<{{feature_name.pascalCase()}}State> emit) {
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
