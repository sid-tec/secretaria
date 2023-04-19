import 'package:secretaria/src/model/interfaces/i_reuniao.dart';
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
  int get numero => values.first['numero'];
  //
  @override
  int get aprovada => values.first['aprovada'];
  //
  @override
  bool get ordinaria => values.first['ordinaria'];
  //
  @override
  String get local => values.first['local'];
  //
  @override
  //String get data => values.first['data'];
  String get data {
    print(values);
    String d = values.first['data'];
    return d;
  }

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
