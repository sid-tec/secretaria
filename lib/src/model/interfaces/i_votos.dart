class IVotos {
  final int favor;
  final int contra;
  final int absten;

  IVotos._({
    required this.favor,
    required this.contra,
    required this.absten,
  });

  factory IVotos.cria({required List<int> votos}) {
    var f = votos.isNotEmpty ? votos.first : 0;
    var c = votos.length > 1 ? votos[1] : 0;
    var a = votos.length > 2 ? votos[2] : 0;

    return IVotos._(favor: f, contra: c, absten: a);
  }

  String resultado() {
    var r = ' A plenário votou e a proposta foi ';
    r += favor > contra ? 'aprovada' : 'reprovada';

    r += contra == 0 && absten == 0 ? ' por unanimidade.' : ' com ${apura()}';
    return r;
  }

  String apura() {
    var r = '';
    r += '$favor votos a favor, ';
    r += '$contra votos contra e ';
    r += '$absten abstenções.';

    return r;
  }
}
