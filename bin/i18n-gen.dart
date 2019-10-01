import 'dart:io';

void collectDarts(IOSink darts, String folderName, RegExp exp) async {
  List contents = new Directory(folderName).listSync(recursive: true);
  for (var fileOrDir in contents) {
    if (fileOrDir is File) {
      if (exp.hasMatch(fileOrDir.path)) {
        // print(fileOrDir.path);
        darts.write(fileOrDir.path + '\r\n');
      }
    }
  }
}

void main() async {
  // build list of DART files
  File f = File('dartFiles.lst');
  if (f.existsSync()) f.deleteSync();
  final darts = f.openWrite(mode: FileMode.append);
  darts.write('lib/app_component.dart' + '\r\n');
  await collectDarts(darts, 'web', new RegExp(r"\.dart$"));
  await collectDarts(darts, 'lib/src', new RegExp(r"\.dart$"));
  await collectDarts(darts, '.dart_tool/build/generated/nightscout_reporter',
      new RegExp(r"\.template.dart$"));
  await darts.close();

  // generate list of ARB files
  f = File('arbFiles.lst');
  if (f.existsSync()) f.deleteSync();
  final arbs = f.openWrite(mode: FileMode.append);
  RegExp exp = new RegExp(r"/intl_.+\.arb");

  List contents = new Directory("messages/").listSync(recursive: true);
  for (var fileOrDir in contents) {
    if (fileOrDir is File) {
      if (exp.hasMatch(fileOrDir.path)) {
        // print(fileOrDir.path);
        arbs.write(fileOrDir.path + '\r\n');
      }
    }
  }
  await arbs.close();

// excute intl_translation:generate_from_arb
  print("compiling ARB files...");
  ProcessResult results = await Process.run('pub', [
    'global',
    'run',
    'intl_translation:generate_from_arb',
    '--output-dir',
    "./temp",
    '--dart-list',
    'dartFiles.lst',
    '--arb-list',
    'arbFiles.lst'
  ]);

  if (results.exitCode == 0) {
    print(results.stdout);
  } else {
    print(results.stderr);
  }
}
