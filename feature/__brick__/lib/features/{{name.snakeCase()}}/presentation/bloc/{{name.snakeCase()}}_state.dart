import 'package:equatable/equatable.dart';

sealed class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

// TODO: Add more states
class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}
