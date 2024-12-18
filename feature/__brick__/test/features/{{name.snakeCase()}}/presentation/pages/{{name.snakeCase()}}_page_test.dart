import 'package:bloc_test/bloc_test.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_bloc.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_event.dart';
import 'package:placeorder_buyer_app/features/{{name.snakeCase()}}/presentation/bloc/{{name.snakeCase()}}_state.dart';

class Mock{{name.pascalCase()}}Bloc extends MockBloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State>
    implements {{name.pascalCase()}}Bloc {}

void main() {}
