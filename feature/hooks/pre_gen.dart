import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  // Run `flutter packages get` after generation.
  final progress = context.logger.progress('Installing packages');
  await Process.run('flutter', ['pub', 'add', 'flutter_bloc']);
  await Process.run('flutter', ['pub', 'add', 'flutter_hooks']);
  await Process.run('flutter', ['pub', 'add', 'json_annotation']);
  await Process.run('flutter', ['pub', 'add', 'equatable']);
  await Process.run('flutter', ['pub', 'add', 'freezed_annotation']);
  await Process.run('flutter', ['pub', 'add', 'dev:build_runner']);
  await Process.run('flutter', ['pub', 'add', 'dev:json_serializable']);
  await Process.run('flutter', ['pub', 'add', 'dev:freezed']);
  progress.complete();
}
