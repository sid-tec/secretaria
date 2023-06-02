import 'dart:io';
import 'package:path/path.dart' as p;
import 'dart:convert';

class Repo {
  static var filePath =
      p.join(Directory.current.path, 'lib\\src\\repository', 'reunioes.json');
  static var tsvPath = p.join(
      Directory.current.path, 'lib\\src\\repository', 'EcomercialSV.txt');

  static Future<Map> readJsonFile() async =>
      jsonDecode(File(filePath).readAsStringSync());

// {"users":[{"id":1,"user":"user1","password":"p455w0rd"},{"id":2,"user":"user2","pass":"p455w0rd"}]}
  static Future<void> saveJsonFile(Map map) async =>
      File(filePath).writeAsStringSync(json.encode(map));

  static Future<void> saveEcomercialSV(String text) async {
    File(tsvPath).writeAsStringSync(text);
  }

  static Future<Iterable> reunioes() async {
    final map = await readJsonFile();
    for (var element in map.entries) {
      if (element.key == "reunioes") return element.value;
    }
    return [];
  }

  static void geraEcomecialSV(List atas) async {
    const separador = '&';
    final regexp = RegExp(r'&');
    var r = '';
    for (Map ata in atas) {
      String nome = ata['nome'];
      r += nome.replaceAll(regexp, 'E');
      r += separador;
      String cabecalho = ata['cabecalho'];
      r += cabecalho.replaceAll(regexp, 'E');
      r += separador;
      String corpo = ata['corpo'];
      r += corpo.replaceAll(regexp, 'E');
      r += '\n';
    }
    Repo.saveEcomercialSV(r);
  }
}
