import 'package:secretaria/src/model/interfaces/i_reuniao.dart';
import 'package:secretaria/src/model/reuniao_helper.dart';
import 'package:secretaria/src/repository/dados_servidores.dart';
//
import '../interfaces/i_item.dart';
import '../interfaces/i_servidor.dart';
/* import 'data.dart';
import 'numero.dart';
import 'pauta.dart';
import 'servidor.dart';
import 'servidores.dart';
import 'texto.dart'; */

//
class Reuniao implements IReuniao {
  //
  // ===========================
  final Map _values;

  Reuniao(this._values);

/*   Reuniao._({
    required super._values,
    required super.what,
  });

  factory Reuniao.cria({
    required int numero,
    required bool ordinaria,
    required String data,
    required int aprovada,
    required String local,
    required String presidente,
    required List<String> presentes,
    required List<String> justificaram,
    required List<Map> pauta,
  }) =>
      Reuniao._(what: 'reuniao', _values: [
        Numero(what: 'numero', value: numero),
        BoolVo(what: 'ordinaria', value: ordinaria),
        Data(what: 'data', value: data),
        Numero(what: 'aprovada', value: aprovada),
        Texto(what: 'local', value: local),
        Servidor(what: 'presidente', value: presidente),
        Servidores.cria(servs: presentes, what: 'presentes'),
        Servidores.cria(servs: justificaram, what: 'justificaram'),
        Pauta.cria(pauta: pauta),
      ]); */

  @override
  String get numero => _values['numero'].toString();
  //
  @override
  String get aprovada => _values['aprovada'] > 0
      ? 'Aprovada na ${_values['aprovada']}ª RO.'
      : 'Ainda para aprovação, versão de ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}.';
  //
  @override
  String get aprovadaFileName => _values['aprovada'] > 0
      ? 'Aprovada na ${_values['aprovada']} R${tipoReuniao.substring(1)}'
      : 'Ainda por aprovar';
  //
  @override
  String get tipoReuniao => ReuniaoHelper.tipoReuniao(_values['ordinaria']);
  //
  @override
  String get local => _values['local'];
  //
  @override
  String get dataSimples {
    var date = DateTime.parse(_values['data']);
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  String get dataFileName {
    var date = DateTime.parse(_values['data']);
    var mes = ReuniaoHelper.meses[date.month];
    return 'em $mes de ${date.year}';
  }

  //
  @override
  String get dataCompleta => ReuniaoHelper.dataCompleta(_values['data']);

  //=> DateTime(int.parse());
  //
  @override
  IServidor get presidente =>
      DadosServidores.cria([_values['presidente']]).first;
  //
  @override
  List<IServidor> get presentes => DadosServidores.cria(_values['presentes']);
  //
  @override
  List<IServidor> get justificaram =>
      DadosServidores.cria(_values['justificaram']);
  @override
  List<dynamic> get pauta => _values['pauta'];
}
