import '../interfaces/i_votos.dart';

class Votos implements IVotos {
  final List _votos;

  Votos(this._votos);

  @override
  int get favor => voto('f');
  @override
  int get contra => voto('c');
  @override
  int get absten => voto('a');

  int voto(String qual) {
    switch (qual) {
      case 'f':
        return _votos.isNotEmpty ? _votos.first : 0;
      case 'c':
        return _votos.length > 1 ? _votos[1] : 0;
      case 'a':
        return _votos.length > 2 ? _votos[2] : 0;
      default:
        return 0;
    }
  }

  @override
  String resultado() {
    var r = ' A plenário votou e a proposta foi ';
    r += favor > contra ? 'aprovada' : 'reprovada';
    r += contra == 0 && absten == 0 ? ' por unanimidade.' : ' com ${apura()}';
    return r;
  }

  @override
  String apura() {
    var r = '$favor votos a favor, ';
    r += '$contra votos contra e ';
    r += '$absten abstenções.';
    return r;
  }
}
