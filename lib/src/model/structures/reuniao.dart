import 'package:secretaria/src/model/interfaces/i_reuniao.dart';
import 'package:secretaria/src/model/reuniao_helper.dart';
import 'package:sid_d_d/sid_d_d.dart';
//
import '../interfaces/i_item.dart';
import '../interfaces/i_servidor.dart';
import 'data.dart';
import 'numero.dart';
import 'pauta.dart';
import 'servidor.dart';
import 'servidores.dart';
import 'texto.dart';

//
class Reuniao extends ValueTree implements IReuniao {
  //
  // ===========================
  Reuniao._({
    required super.values,
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
      Reuniao._(what: 'reuniao', values: [
        Numero(what: 'numero', value: numero),
        BoolVo(what: 'ordinaria', value: ordinaria),
        Data(what: 'data', value: data),
        Numero(what: 'aprovada', value: aprovada),
        Texto(what: 'local', value: local),
        Servidor(what: 'presidente', value: presidente),
        Servidores.cria(servs: presentes, what: 'presentes'),
        Servidores.cria(servs: justificaram, what: 'justificaram'),
        Pauta.cria(pauta: pauta),
      ]);

  @override
  String get numero => values.first['numero'].toString();
  //
  @override
  String get aprovada => values.first['aprovada'] > 0
      ? 'Aprovada na ${values.first['aprovada']}ª RO.'
      : 'Ainda para aprovação, versão de ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}.';
  //
  @override
  String get aprovadaFileName => values.first['aprovada'] > 0
      ? 'Aprovada na ${values.first['aprovada']} R${tipoReuniao.substring(1)}'
      : 'Ainda por aprovar';
  //
  @override
  String get tipoReuniao =>
      ReuniaoHelper.tipoReuniao(values.first['ordinaria']);
  //
  @override
  String get local => values.first['local'];
  //
  @override
  String get dataSimples {
    var date = DateTime.parse(values.first['data']);
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  String get dataFileName {
    var date = DateTime.parse(values.first['data']);
    var mes = ReuniaoHelper.meses[date.month];
    return 'em $mes de ${date.year}';
  }

  //
  @override
  String get dataCompleta => ReuniaoHelper.dataCompleta(values.first['data']);

  //=> DateTime(int.parse());
  //
  @override
  IServidor get presidente => values.first['presidente'];
  //
  @override
  List<IServidor> get presentes => values.first['presentes'];
  //
  @override
  List<IServidor> get justificaram => values.first['justificaram'];
  @override
  List<IItem> get pauta => values.first['pauta'];
}
