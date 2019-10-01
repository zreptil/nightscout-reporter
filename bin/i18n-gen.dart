import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart' as p;

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

void dedupe(File inFile, File outFile) async {
  // Read file
  StringBuffer contents = StringBuffer();
  var contentStream = inFile.openRead();
//  var out = outFile.
  final out = outFile.openWrite(mode: FileMode.write);

  String lastLine = '';
  bool empty = false;
  await contentStream.transform(Utf8Decoder()).transform(LineSplitter()).listen(
      (String line) {
    if (line == '') {
      if (!empty) out.writeln('');
      empty = true;
    } else if (line != lastLine) {
      out.writeln(line);
      lastLine = line;
      empty = false;
    }
  },
      onDone: () => print(contents
          .toString()), // Call toString() method to receive the complete data
      onError: (e) => print('[Problems]: $e')).asFuture();
}

void dedupeAll() async {
  List contents = new Directory(".temp/").listSync();
  for (var fileOrDir in contents) {
    if (fileOrDir is File) {
      await dedupe(
          fileOrDir, new File('lib/messages/' + p.basename(fileOrDir.path)));
    }
  }
}

void main() async {
  // build list of DART files
  File f = File('dartFiles.lst');
  final darts = f.openWrite(mode: FileMode.write);
  darts.write('lib/app_component.dart' + '\r\n');
  await collectDarts(darts, 'web', new RegExp(r"\.dart$"));
  await collectDarts(darts, 'lib/src', new RegExp(r"\.dart$"));
  await collectDarts(darts, '.dart_tool/build/generated/nightscout_reporter',
      new RegExp(r"\.template.dart$"));
  await darts.close();

  // generate list of ARB files
  f = File('arbFiles.lst');
  final arbs = f.openWrite(mode: FileMode.write);
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
    "./.temp",
    '--dart-list',
    'dartFiles.lst',
    '--arb-list',
    'arbFiles.lst'
  ]);

  if (results.exitCode == 0) {
    print(results.stdout);
    await dedupeAll();
  } else {
    print(results.stderr);
  }

  File('dartFiles.lst').deleteSync();
  File('arbFiles.lst').deleteSync();
  Directory('.temp/').deleteSync(recursive: true);
}
