import '../repository/dados_servidores.dart';
import 'reuniao_helper.dart';
import 'structures/reuniao.dart';

class Ata {
  final Reuniao reuniao;
  Ata(this.reuniao);

  @override
  String toString() => reuniao.toString();

  Map ata() {
    var cabecalho = head();
    //
    var corpo = apresentacao();
    //
    corpo += participantes();
    //
    corpo += listaPauta();
    //
    corpo += pautas();
    //
    corpo += fim();
    //
    var nome = fileName();

    return {
      'cabecalho': cabecalho,
      'corpo': corpo,
      'nome': nome,
    };
  }

  String apresentacao() {
    var r = 'No ';
    r += reuniao.dataCompleta;
    r += ', reúne-se ${reuniao.local}, a plenária do Departamento de ';
    r += 'Físico-Química, sob a presidência do Chefe do Departamento, ';
    r += 'Professor ${reuniao.presidente.nome}, ';
    r += 'para a realização da ${reuniao.numero}ª Reunião ';
    r += '${reuniao.tipoReuniao} do GFQ. ';
    //
    return r;
  }

  String head() {
    var r = '';
    //
    r += 'Ata da ${reuniao.numero}ª Reunião ${reuniao.tipoReuniao} ';
    r += 'do Departamento de Físico-Química, ';
    r += 'do Instituto de Química, da Universidade Federal Fluminense. ';
    r += 'Em ${reuniao.dataSimples}. ${reuniao.aprovada}';
    //
    return r;
  }

  String participantes() {
    var retorno = '';

    final professores = DadosServidores.profs(reuniao.presentes);
    final tecnicos = DadosServidores.tecns(reuniao.presentes);
    final professoresJ = DadosServidores.profs(reuniao.justificaram);
    final tecnicosJ = DadosServidores.tecns(reuniao.justificaram);

    var pronome = ReuniaoHelper.quemTexto(servidores: professores);
    retorno += 'Participaram desta reunião ';
    retorno +=
        '$pronome professor${pronome == 'os' ? 'es' : pronome == 'o' ? '' : pronome} ';
    retorno += ReuniaoHelper.concatena(
      servidores: professores,
      pontoFinal: true,
    );

    if (tecnicos.isNotEmpty) {
      pronome = ReuniaoHelper.quemTexto(servidores: tecnicos);
      retorno += 'Participaram também dessa reunião ';
      retorno += '$pronome técnic$pronome administrativ$pronome ';
      retorno += ReuniaoHelper.concatena(
        servidores: tecnicos,
        pontoFinal: true,
      );
    }

    if (professoresJ.isNotEmpty) {
      pronome = ReuniaoHelper.quemTexto(servidores: professores);
      retorno += 'Justificaram a sua ausencia ';
      retorno +=
          '$pronome professor${pronome == 'os' ? 'es' : pronome == 'o' ? '' : pronome} ';

      retorno += ReuniaoHelper.concatena(
        servidores: professoresJ,
        pontoFinal: true,
      );
    }

    if (tecnicosJ.isNotEmpty) {
      pronome = ReuniaoHelper.quemTexto(servidores: tecnicosJ);
      retorno += 'Justificaram a sua ausencia ';
      retorno += '$pronome técnic$pronome administrativ$pronome ';
      retorno += ReuniaoHelper.concatena(
        servidores: tecnicosJ,
        pontoFinal: true,
      );
    }

    return retorno;
  }

  String listaPauta() {
    var r = '';

    if (reuniao.pauta.length == 1) {
      r += 'O item de pauta proposto para discussão e deliberação é ';
    } else {
      r +=
          'Os itens de pauta propostos para discussão e deliberação são os seguintes: ';
    }
    var i = 1;
    for (var item in reuniao.pauta) {
      r += reuniao.pauta.length == 1
          ? 'único: ${item.titulo}'
          : '${i++}. ${item.titulo}';

      if (item.incluido.quem.isNotEmpty) {
        var quem = item.incluido.quem.first;
        r += ' - a inclusão deste item foi proposto pel';
        r += quem.pronome;
        r += ' ';
        r += quem.titulo;
        r += ' ';
        r += quem.nome;
        r += ' e ${item.incluido.votos.resultado()}';
      }
      r += reuniao.pauta.length == i - 1 ? '. ' : '; ';
    }
    return r;
  }

  String pautas() {
    var r = '';

    var i = 1;

    r += 'O Presidente então inicia a reunião com ';

    for (var item in reuniao.pauta) {
      // ======================

      r += '';

      r += reuniao.pauta.length == 1
          ? 'o item único: ${item.titulo}'
          : 'o item ${i++}. ${item.titulo}: ${item.descricao}';

      for (var fala in item.falas) {
        r += ' Com a palavra ';
        r += fala.quem.first.pronome;
        r += fala.quem.first.titulo;
        r +=
            '${fala.quem.first.curto}#: ${fala.texto} XXXXXX ${fala.votos.resultado()} ZZZZZZZ ';
      }

      //

      r += reuniao.pauta.length == 1 || reuniao.pauta.length == i - 1
          ? ''
          : ' A reunião segue então para ';
    }
    return r;
  }

  String fim() {
    var retorno =
        'Nada mais havendo a tratar encerrou-se a sessão da ${reuniao.numero}ª Reunião ';

    retorno += reuniao.tipoReuniao;

    retorno += ', sendo a presente ata lavrada e assinada pelo ';
    retorno += 'Chefe do Departamento de Físico-Química, Professor ';
    retorno += reuniao.presidente.nome;
    retorno += '.';
    //
    return retorno;
  }

  String fileName() {
    var retorno = 'Ata da ${reuniao.numero} Reunião ';
    retorno += reuniao.tipoReuniao;
    retorno += ' em ${reuniao.dataFileName} - ';
    retorno += reuniao.aprovadaFileName;
    retorno += '.docx';
    //
    return retorno;
  }

/*   String primeiroNome(String nome) {
    var space = nome.indexOf(" ");
    var end = space < 0 ? nome.length : space;

    return nome.substring(
      0,
      end,
    );
  } */
}
