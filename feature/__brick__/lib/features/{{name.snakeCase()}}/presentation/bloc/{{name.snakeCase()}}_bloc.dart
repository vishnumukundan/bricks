import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/domain/usecases/{{name.snakeCase()}}_usecase.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_event.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final {{name.pascalCase()}}UseCase {{name.camelCase()}}UseCase;

  {{name.pascalCase()}}Bloc(this.{{name.camelCase()}}UseCase) : super({{name.pascalCase()}}Initial()) {
    on<{{name.pascalCase()}}Event>(initial);
  }

  // TODO: Rename this method
  void initial({{name.pascalCase()}}Event event, Emitter<{{name.pascalCase()}}State> emit) async {
    // final result = await {{name.camelCase()}}UseCase.call(
    // TODO: Add params
    //   params: ,
    // );

    // TODO: Handle result
    // result.fold(
    //   (failure) => emit(),
    //   (response) {
    //     if (response.status == true) {
    //       emit();
    //     } else {
    //       emit();
    //     }
    //   },
    // );
  }
}
