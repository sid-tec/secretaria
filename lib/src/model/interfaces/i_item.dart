import 'i_servidor.dart';
import 'i_fala.dart';

class IItem {
  String titulo;
  String descricao;
  List<IFala> incluido;
  List<IFala> falas;
  List<IServidor> envolvidos;
  //
  IItem({
    required this.titulo,
    required this.descricao,
    required this.incluido,
    required this.falas,
    required this.envolvidos,
  });

  @override
  String toString() =>
      'titulo: $titulo, descricao: $descricao, incluido: $incluido, falas: $falas, envolvidos: $envolvidos';
}
