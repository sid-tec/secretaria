import 'dart:io';
import 'package:atas/model/servidores.dart';
import 'package:docx_template/docx_template.dart';
import 'package:path/path.dart' as p;
import 'package:atas/model/reuniao.dart';
import 'package:atas/repository/file_repo.dart';
import 'package:atas/ata/ata.dart';
//

void main(List<String> arguments) async {
  var reunioes = await Repo.reunioes();

  var atas = [];
  for (var r in reunioes) {
    print('=======================================\n\n');
    var ata = Ata(Reuniao(reuniao: r)).ata();
    atas.add(ata);
  }

  geraTsv(atas);
  //print(Servidores.nomes);
  //Repo.saveJsonFile({"reunioes": reunioes});
}

/* void geraDocx(
  String cabecalho,
  String corpo,
  int numero,
) async {
  var templatePath = p.join(
    Directory.current.path,
    'lib/repository',
    'ata.docx',
  );

  var genPath = p.join(
    Directory.current.path,
    'lib/repository',
    'ata$numero.docx',
  );
  final template = File(templatePath);
  final gerado = await DocxTemplate.fromBytes(await template.readAsBytes());

  var c = Content();
  c.add(TextContent("cabecalho", cabecalho));
  c.add(TextContent("corpo", corpo));

  final d = await gerado.generate(c);
  final of = File(genPath);
  if (d != null) await of.writeAsBytes(d);
} */

void geraTsv(List atas) async {
  const separador = '&';
  var r = '';
  for (Map ata in atas) {
    r += ata['nome'];
    r += separador;
    r += ata['cabecalho'];
    r += separador;
    r += ata['corpo'];
    r += '\n';
  }
  print(r);
  //Repo.saveTsvFile(r);
}

String pontoFinal(String t) {
  if (t.substring(t.length - 1) != '.') t += '.';
  return t;
}
