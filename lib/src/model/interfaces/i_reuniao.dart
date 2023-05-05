import 'i_servidor.dart';
import 'i_item.dart';

abstract class IReuniao {
  String get numero;
  String get aprovada;
  String get aprovadaFileName;

  String get tipoReuniao;
  String get local;
  String get dataCompleta;
  String get dataSimples;
  String get dataFileName;

  IServidor get presidente;
  List<IServidor> get presentes;
  List<IServidor> get justificaram;
  List<IItem> get pauta;
}
