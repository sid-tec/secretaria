import 'i_servidor.dart';
import 'i_item.dart';

abstract class IReuniao {
  int get numero;
  int get aprovada;
  bool get ordinaria;
  String get local;
  String get data;
  IServidor get presidente;
  List<IServidor> get presentes;
  List<IServidor> get justificaram;
  List<IItem> get pauta;
}
