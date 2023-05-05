import 'i_servidor.dart';
import 'i_votos.dart';

abstract class IFala {
  List<IServidor> get quem;
  String get texto;
  IVotos get votos;
}
