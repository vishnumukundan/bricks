import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

void run(HookContext context) async {
  final projectNameProcess = context.logger.progress('fetching project name');
  final projDir = await Process.run(Platform.isWindows ? 'cd' : 'pwd', [])
      .then((value) => value.stdout);
  final projName = await getProjectName(projDir);
  projectNameProcess.complete();

  final state = context.vars["state"] as String;

  context.vars = {
    ...context.vars,
    'is_bloc': state == 'bloc',
    'is_cubit': state == 'cubit',
    'project_name': projName,
  };

  // Run `flutter packages get` after generation.
  final progress = context.logger.progress('Installing packages');

  await Future.wait([
    Process.run('flutter', ['pub', 'add', 'flutter_bloc']),
    Process.run('flutter', ['pub', 'add', 'flutter_hooks']),
    Process.run('flutter', ['pub', 'add', 'json_annotation']),
    Process.run('flutter', ['pub', 'add', 'equatable']),
    Process.run('flutter', ['pub', 'add', 'freezed_annotation']),
    Process.run('flutter', ['pub', 'add', 'dev:build_runner']),
    Process.run('flutter', ['pub', 'add', 'dev:json_serializable']),
    Process.run('flutter', ['pub', 'add', 'dev:freezed']),
  ]);
  progress.complete();

  if (context.vars['is_bloc']) {}
}

Future<String> getProjectName(String rootDir) async {
  String projName = "replace_with_project_name";
  try {
    // Locate the pubspec.yaml file in the current directory
    final dir = Directory('$rootDir/pubspec.yaml');
    final path = dir.path.split("\n").join("");
    final pubspecFile = File(path);

    if (!await pubspecFile.exists()) {
      print('pubspec.yaml not found');
      return projName;
    }

    // Read the contents of the pubspec.yaml file
    final pubspecContent = await pubspecFile.readAsString();

    // Parse the YAML content
    final yamlMap = loadYaml(pubspecContent) as YamlMap;

    // Extract the project name
    projName = yamlMap['name'] as String? ?? projName;
    return projName;
  } catch (e) {
    print('e =---> ${e}');
    return projName;
  }
}
