import 'dart:io';
import 'package:path/path.dart' as p;
import 'dart:convert';

class Repo {
  static var filePath =
      p.join(Directory.current.path, 'lib\\repository', 'atas.json');
  static var tsvPath =
      p.join(Directory.current.path, 'lib\\repository', 'tsv.txt');

  static Future<Map> readJsonFile() async =>
      jsonDecode(File(filePath).readAsStringSync());

// {"users":[{"id":1,"user":"user1","password":"p455w0rd"},{"id":2,"user":"user2","pass":"p455w0rd"}]}
  static Future<void> saveJsonFile(Map map) async =>
      File(filePath).writeAsStringSync(json.encode(map));

  static Future<void> saveTsvFile(String text) async {
    File('C:\\Users\\Sid\\Documents\\tsv.txt')
        .writeAsStringSync(text); // C:\Users\Sid\
  }

  static Future<Iterable> reunioes() async {
    final map = await readJsonFile();
    for (var element in map.entries) {
      if (element.key == "reunioes") return element.value;
    }
    return [];
  }
}
