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
  int get numero => value(what: 'numero').first;
  //
  @override
  int get aprovada => value(what: 'aprovada').first;
  //
  @override
  bool get ordinaria => value(what: 'ordinaria').first;
  //
  @override
  String get local => value(what: 'local').first;
  //
  @override
  DateTime get data => value(what: 'data').first;
  //
  @override
  IServidor get presidente => value(what: 'presidente').first;
  //
  @override
  List<IServidor> get presentes => value(what: 'presentes').first;
  //
  @override
  List<IServidor> get justificaram => value(what: 'justificaram').first;
  @override
  List<IItem> get pauta => value(what: 'pauta').first;
}
