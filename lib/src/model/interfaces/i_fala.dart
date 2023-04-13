import 'i_servidor.dart';
import 'i_votos.dart';

class IFala {
  final List<IServidor> quem;
  final String texto;
  final IVotos votos;

  IFala({
    required this.quem,
    required this.texto,
    required List<int> votosList,
  }) : votos = IVotos.cria(votos: votosList);
}
/* 

 */