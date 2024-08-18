import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  // final progress = context.logger.progress('Installing packages');

  // // Run `flutter packages get` after generation.
  // await Process.run('flutter', ['pub', 'add', 'flutter_bloc']);
  // await Process.run('flutter', ['pub', 'get']);
  // progress.complete();

  // final generator = await MasonGenerator.fromBrick(
  //   Brick.version(name: "bloc", version: "any"),
  // );

  // final destination = Directory(p.join(Directory.current.path, 'lib',
  //     'features', context.vars['feature_name'], "presentation", "bloc"));

  // final genTarget = DirectoryGeneratorTarget(destination);

  // var blocContextVars = <String, dynamic>{
  //   'name': context.vars['feature_name'],
  //   'style': 'freezed',
  // };

  // await generator.hooks.preGen(
  //   vars: blocContextVars,
  //   workingDirectory: destination.path,
  //   onVarsChanged: (vars) {
  //     blocContextVars = vars;
  //   },
  // );

  // final files = await generator.generate(
  //   genTarget,
  //   vars: blocContextVars,
  //   fileConflictResolution: FileConflictResolution.overwrite,
  // );

  // for (final file in files) {
  //   context.logger.info('Generated: ${file.path} :: ${file.status}');
  // }

  // flutter pub run build_runner build --delete-conflicting-outputs
  final buildRunner = context.logger.progress('Running build_runner');
  await Process.run('flutter',
      ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs']);
  buildRunner.complete();
}
