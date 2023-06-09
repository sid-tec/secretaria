import 'package:secretaria/secretaria.dart';
import 'package:secretaria/src/model/structures/reuniao.dart';
//

void main() async {
  var reunioes = await Repo.reunioes();

  /* var reuniao = Reuniao.cria(reunioes.last);
  print('=======================================\n\n');
  var ata = Ata(reuniao);
  print(ata.ata()); */
  final atas = [];
  for (var r in reunioes) {
    /* var pres = <String>[];
    var just = <String>[];
    var paut = <Map<dynamic, dynamic>>[];
    for (var element in r['presentes']) {
      pres.add(element.toString());
    }
    for (var element in r['justificaram']) {
      just.add(element.toString());
    }
    var reuniao = Reuniao.cria(
        numero: r['numero'],
        ordinaria: r['ordinaria'],
        data: r['data'],
        aprovada: r['aprovada'],
        local: r['local'],
        presidente: r['presidente'],
        presentes: pres,
        justificaram: just,
        pauta: paut);
    print(reuniao); */
    final reuniao = Reuniao.cria(r);
    atas.add(Ata(reuniao).ata());
  }

  Repo.geraEcomecialSV(atas);

/*   for (var serv in DadosServidores.listaCSV()) {
    print(serv);
  } */
  //Repo.saveJsonFile({"reunioes": reunioes});
}

/* void geraDocx(
  String cabecalho'],
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
}

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
} */
