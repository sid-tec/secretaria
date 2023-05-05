import 'i_servidor.dart';
import 'i_fala.dart';

abstract class IItem {
  String get titulo;
  String get descricao;
  IFala get incluido;
  List<IFala> get falas;
  List<IServidor> get envolvidos;
}
