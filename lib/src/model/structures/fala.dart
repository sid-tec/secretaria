import '../interfaces/i_fala.dart';
import '../interfaces/i_servidor.dart';
import '../interfaces/i_votos.dart';
import '../../repository/dados_servidores.dart';

import 'votos.dart';
//

class Fala implements IFala {
  //
  // ===========================
  final String _texto;
  final IVotos _votos;
  final List<IServidor> _quem;

  Fala._(this._quem, this._texto, this._votos);

  factory Fala.cria({
    required Map fala,
  }) {
    var quem = fala.containsKey('quem')
        ? DadosServidores.cria([fala['quem']])
        : <IServidor>[];

    var votos =
        fala.containsKey('votos') ? Votos(fala['votos']) : Votos(<int>[]);

    var texto = fala.containsKey('texto') ? fala['texto'] : '';

    return Fala._(quem, texto, votos);
  }

  @override
  List<IServidor> get quem => _quem;
  @override
  String get texto => _texto;
  @override
  IVotos get votos => _votos;
}
